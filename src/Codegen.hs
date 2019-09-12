{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections #-}

module Codegen where

import           Syntax

import           Data.Word
import           Data.String
import           Data.String.Transform
import           Data.ByteString.Short
import           Data.List
import           Data.Function
import           Data.Functor
import qualified Data.Map                      as Map

import           Control.Monad.State
import           Control.Applicative

import           LLVM.AST
import           LLVM.AST.Global
import           LLVM.AST.AddrSpace
import qualified LLVM.AST.Type                 as T
import qualified LLVM.AST.Typed                as T
import qualified LLVM.AST.Linkage              as L
import qualified LLVM.AST.Constant             as C
import qualified LLVM.AST.CallingConvention    as CC
import qualified LLVM.AST.Attribute            as A
import qualified LLVM.AST.FloatingPointPredicate
                                               as FP


newtype LLVM a = LLVM (State Module a) deriving (Functor, Applicative, Monad, MonadState Module )

runLLVM :: Module -> LLVM a -> Module
runLLVM mod (LLVM m) = execState m mod

emptyModule :: ShortByteString -> Module
emptyModule label = defaultModule { moduleName = label }

addDefn :: Definition -> LLVM ()
addDefn d = LLVM $ state $ \s ->
    let definitions = moduleDefinitions s
        s'          = s { moduleDefinitions = definitions ++ [d] }
    in  ((), s')

-- defined a global function (uses 'define' keyword in LLVM ir)
define :: Type -> ShortByteString -> [(Type, Name)] -> [BasicBlock] -> LLVM ()
define retTypes label argTypes body =
    addDefn $ GlobalDefinition $ functionDefaults
        { name        = Name label
        , parameters  = ([ Parameter ty nm [] | (ty, nm) <- argTypes ], False)
        , returnType  = retTypes
        , basicBlocks = body
        }

-- defines a global external function
external :: Type -> ShortByteString -> [(Type, Name)] -> LLVM ()
external retTypes label argTypes =
    addDefn $ GlobalDefinition $ functionDefaults
        { name        = Name label
        , linkage     = L.External
        , parameters  = ([ Parameter ty nm [] | (ty, nm) <- argTypes ], False)
        , returnType  = retTypes
        , basicBlocks = []
        }

codegenGetCharRef :: LLVM ()
codegenGetCharRef = external T.i8 "getchar" []

codegenPutCharRef :: LLVM ()
codegenPutCharRef = external T.i32 "putchar" [(T.i8, "c")]

codegenTape :: LLVM ()
codegenTape = addDefn $ GlobalDefinition $ globalVariableDefaults
    { name                  = Name "tape"
    , LLVM.AST.Global.type' = T.ArrayType 512 T.i8
    , initializer           = Just $ C.AggregateZero $ T.ArrayType 512 T.i8
    }

codegenPointer :: LLVM ()
codegenPointer = addDefn $ GlobalDefinition $ globalVariableDefaults
    { name                  = Name "pointer"
    , LLVM.AST.Global.type' = T.i32
    , initializer           = Just $ C.Int 32 256
    }



type Names = Map.Map ShortByteString Int

uniqueName :: ShortByteString -> Names -> (ShortByteString, Names)
uniqueName nm ns = case Map.lookup nm ns of
    Nothing -> (nm, Map.insert nm 1 ns)
    Just ix -> (nm <> (toShortByteString . show) ix, Map.insert nm (ix + 1) ns)


data CodegenState = CodegenState { currentBlock :: Name, blocks :: Map.Map Name BlockState, blockCount :: Int, count :: Word, names :: Names } deriving (Show)

emptyCodegen :: CodegenState
emptyCodegen = CodegenState (Name "entry") Map.empty 0 0 Map.empty


data BlockState = BlockState { idx :: Int, stack :: [Named Instruction], term :: Maybe (Named Terminator) } deriving Show

emptyBlock :: Int -> BlockState
emptyBlock i = BlockState i [] Nothing

sortBlocks :: [(Name, BlockState)] -> [(Name, BlockState)]
sortBlocks = sortBy (compare `on` (idx . snd))

createBlocks :: CodegenState -> [BasicBlock]
createBlocks m = map makeBlock $ sortBlocks $ Map.toList (blocks m)

makeBlock :: (Name, BlockState) -> BasicBlock
makeBlock (l, BlockState _ s t) = BasicBlock l (reverse s) (makeTerm t)
  where
    makeTerm (Just x) = x
    makeTerm Nothing  = error $ "Block has no terminator: " ++ show l


newtype Codegen a = Codegen { runCodegen :: State CodegenState a } deriving (Functor, Applicative, Monad, MonadState CodegenState )

execCodegen :: Codegen a -> CodegenState
execCodegen m = execState (runCodegen m) emptyCodegen

addBlock :: ShortByteString -> Codegen Name
addBlock bName = Codegen $ state $ \s ->
    let new             = emptyBlock $ blockCount s
        (qName, supply) = uniqueName bName (names s)
        s'              = s { blocks = Map.insert (Name qName) new (blocks s)
                            , blockCount = 1 + blockCount s
                            , names = supply
                            }
    in  (Name qName, s')

entry :: Codegen Name
entry = gets currentBlock

current :: Codegen BlockState
current =
    let unpack = maybe (error "could not find block!") return
    in  Map.lookup <$> entry <*> gets blocks >>= unpack

-- replaces the BlockState of the current block
modifyBlock :: BlockState -> Codegen ()
modifyBlock new =
    modify $ \s -> s { blocks = Map.insert (currentBlock s) new (blocks s) }

-- adds a terminator to the current block
terminator :: Named Terminator -> Codegen (Named Terminator)
terminator trm =
    let putTerm s = s { term = Just trm }
    in  (putTerm <$> current >>= modifyBlock) $> trm

-- creates a new name for an unnamed instruction
freshName :: Codegen Name
freshName = UnName <$> incrCount
    where incrCount = modify (\s -> s { count = count s + 1 }) >> gets count

-- instructions/statements
addInstruction :: Instruction -> Type -> Codegen Operand
addInstruction ins t =
    -- adds instruction with given return type to list of instructions and returns a local reference to it's return type 
    let insert blk ref = modifyBlock (blk { stack = (ref := ins) : stack blk })
        addInstr blk ref = insert blk ref $> LocalReference t ref
    in  join (addInstr <$> current <*> freshName)

addStatement :: Instruction -> Codegen ()
addStatement ins =
    let addStatement blk = modifyBlock (blk { stack = Do ins : stack blk })
    in  current >>= addStatement

--------------------------------

externf :: Type -> Name -> Operand
externf t n = ConstantOperand $ C.GlobalReference t n

toArgs :: [Operand] -> [(Operand, [A.ParameterAttribute])]
toArgs = map (, [])

----------------------------------

-- Global Constants 
tape :: Operand
tape = externf (PointerType (ArrayType 512 T.i8) (AddrSpace 0)) "tape"

pointer :: Operand
pointer = externf (PointerType T.i32 (AddrSpace 0)) "pointer"

putCharFn :: Operand
putCharFn = externf
    (PointerType (FunctionType T.i32 [T.i8] False) (AddrSpace 0))
    (Name "putchar")

getCharFn :: Operand
getCharFn = externf
    (PointerType (FunctionType T.i8 [] False) (AddrSpace 0))
    (Name "getchar")

constI32 :: Integer -> Operand
constI32 i = ConstantOperand $ C.Int 32 i

constI8 :: Integer -> Operand
constI8 i = ConstantOperand $ C.Int 8 i

-- high level generations
brainfuckEntry :: Codegen ()
brainfuckEntry = addBlock "entry" $> ()

brainfuckExit :: Codegen ()
brainfuckExit = terminator (Do $ Ret Nothing []) $> ()

brainfuckExprs :: [Expr] -> Codegen ()
brainfuckExprs = foldr ((>>) . brainfuckExpr) (return ())

-- Expressions
brainfuckExpr :: Expr -> Codegen ()
brainfuckExpr Write = do
    i   <- load pointer
    p_c <- getArrayElement tape i
    c   <- load p_c
    call putCharFn T.i32 [c]
    return ()

brainfuckExpr Read = do
    c   <- call getCharFn T.i8 []
    i   <- load pointer
    p_c <- getArrayElement tape i
    store p_c c

brainfuckExpr PosIncr = do
    i  <- load pointer
    i' <- add i (constI32 1)
    store pointer i'

brainfuckExpr PosDecr = do
    i  <- load pointer
    i' <- sub i (constI32 1)
    store pointer i'

brainfuckExpr DataIncr = do
    i   <- load pointer
    p_d <- getArrayElement tape i
    d   <- load p_d
    d'  <- add d (constI8 1)
    store p_d d'

brainfuckExpr DataDecr = do
    i   <- load pointer
    p_d <- getArrayElement tape i
    d   <- load p_d
    d'  <- sub d (constI8 1)
    store p_d d'

-- LLVM Operations

call :: Operand -> Type -> [Operand] -> Codegen Operand
call fn t args =
    addInstruction (Call Nothing CC.C [] (Right fn) (toArgs args) [] []) t

store :: Operand -> Operand -> Codegen ()
store ptr val = addStatement $ Store False ptr val Nothing 0 []

load :: Operand -> Codegen Operand
load ptr = addInstruction (Load False ptr Nothing 0 []) retType
    where retType = T.getElementType . T.typeOf $ ptr

add :: Operand -> Operand -> Codegen Operand
add l r = addInstruction (Add False False l r []) T.i8

sub :: Operand -> Operand -> Codegen Operand
sub l r = addInstruction (Sub False False l r []) T.i8

getArrayElement :: Operand -> Operand -> Codegen Operand
getArrayElement arr ind = addInstruction instr retType
  where
    instr   = GetElementPtr False arr [constI32 0, ind] []
    retType = PointerType T.i8 (AddrSpace 0)

readTape :: Codegen Operand
readTape = load pointer >>= getArrayElement tape >>= load

writeTape :: Operand -> Codegen ()
writeTape val = join (store <$> pure val <*> elem)
    where elem = load pointer >>= getArrayElement tape
