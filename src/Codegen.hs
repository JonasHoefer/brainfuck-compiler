{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}

module Codegen where

import           Syntax

import           Data.Word
import           Data.String
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

import qualified LLVM.AST.Linkage              as L
import qualified LLVM.AST.Constant             as C
import qualified LLVM.AST.Attribute            as A
import qualified LLVM.AST.CallingConvention    as CC
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


data CodegenState = CodegenState {}

newtype Codegen a = Codegen { runCodegen :: State CodegenState a } deriving (Functor, Applicative, Monad, MonadState CodegenState )



