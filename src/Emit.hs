{-# LANGUAGE OverloadedStrings #-}

module Emit where

import           LLVM.Module
import           LLVM.Context

import qualified LLVM.AST.Type                 as T
import qualified LLVM.AST                      as AST
import qualified LLVM.AST.Constant             as C
import qualified LLVM.AST.Float                as F
import qualified LLVM.AST.FloatingPointPredicate
                                               as FP

import           Data.Word
import           Data.Int
import qualified Data.ByteString.Char8         as B
import qualified Data.Map                      as Map

import           Control.Monad.Except
import           Control.Applicative

import           Codegen
import qualified Syntax                        as S


codegenMain :: [S.Expr] -> LLVM ()
codegenMain exprs = define T.void "main" [] blks
  where
    blks =
        createBlocks
            $  execCodegen
            $  brainfuckEntry
            *> brainfuckExprs exprs
            *> brainfuckExit

codegen :: AST.Module -> [S.Expr] -> IO AST.Module
codegen mod exprs =
    let mainMod =
                codegenGetCharRef
                    *> codegenPutCharRef
                    *> codegenTape
                    *> codegenPointer
                    *> codegenMain exprs
        newAst = runLLVM mod mainMod
    in  printAst newAst >> return newAst

printAst :: AST.Module -> IO ()
printAst ast = withContext $ \context ->
    withModuleFromAST context ast moduleLLVMAssembly >>= B.putStrLn
