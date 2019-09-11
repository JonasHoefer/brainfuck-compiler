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
import qualified LLVM.AST                      as AST

import qualified LLVM.AST.Type                 as T
import qualified LLVM.AST.Linkage              as L
import qualified LLVM.AST.Constant             as C
import qualified LLVM.AST.CallingConvention    as CC
import qualified LLVM.AST.Attribute            as A
import qualified LLVM.AST.FloatingPointPredicate
                                               as FP


newtype LLVM a = LLVM (State AST.Module a) deriving (Functor, Applicative, Monad, MonadState AST.Module )

runLLVM :: AST.Module -> LLVM a -> AST.Module
runLLVM mod (LLVM m) = execState m mod

emptyModule :: ShortByteString -> AST.Module
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
codegenGetCharRef = external T.i32 "getChar" []

codegenPutCharRef :: LLVM ()
codegenPutCharRef = external T.i32 "putChar" [(T.i32, "c")]

codegenTape :: LLVM ()
codegenTape = addDefn $ GlobalDefinition $ globalVariableDefaults
    { name                  = Name "tape"
    , LLVM.AST.Global.type' = T.i32
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
fresh :: Codegen Word
fresh = modify (\s -> s { count = 1 + count s }) >> gets count

instr :: Instruction -> Codegen Operand
instr ins =
    let addInstr blk ref =
                modifyBlock (blk { stack = (ref := ins) : stack blk })
        ref = UnName <$> fresh
    in  join (addInstr <$> current <*> ref) >> (LocalReference T.i32 <$> ref)

toArgs :: [Operand] -> [(Operand, [A.ParameterAttribute])]
toArgs = map (, [])

call :: Operand -> [Operand] -> Codegen Operand
call fn args = instr $ Call Nothing CC.C [] (Right fn) (toArgs args) [] []

externf :: Type -> Name -> Operand
externf t n = ConstantOperand $ C.GlobalReference t n

-- generates the first basic block in a brainfuck program
brainfuckEntry :: Codegen ()
brainfuckEntry = addBlock "entry" $> ()

brainfuckExit :: Codegen ()
brainfuckExit = terminator (Do $ Ret Nothing []) $> ()

brainfuckExprs :: [Expr] -> Codegen ()
brainfuckExprs exprs = return ()

brainfuckExpr :: Expr -> Codegen Operand
brainfuckExpr Write =
    let fn = externf T.i32 (AST.Name "putChar")
        callFn arg = call fn [arg]
    in  readTape >>= callFn

readTape :: Codegen Operand
readTape = undefined
