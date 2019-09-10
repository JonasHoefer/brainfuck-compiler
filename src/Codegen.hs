{-# LANGUAGE GeneralisedNewtypeDeriving #-}

module Codegen where

import Syntax

import Data.Functor

import Control.Monad.State
import Control.Applicative

import LLVM.AST
import LLVM.AST.Global
import qualified LLVM.AST as AST

import qualified LLVM.AST.Linkage as L
import qualified LLVM.AST.Constant as C
import qualified LLVM.AST.Attribute as A
import qualified LLVM.AST.CallingConvention as CC
import qualified LLVM.AST.FloatingPointPredicate as FP


newtype LLVM a = LLVM (State AST.Module a) deriving (Functor, Applicative, Monad, MonadState AST.Module )