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


genExprCode :: S.Expr -> Codegen AST.Operand
genExprCode = undefined

codegenMain :: LLVM ()
codegenMain = define T.void "main" [] []

codegenGetCharRef :: LLVM ()
codegenGetCharRef = external T.i32 "getChar" []

codegenPutCharRef :: LLVM ()
codegenPutCharRef = external T.i32 "putChar" [(T.i32, "c")]

codegen :: AST.Module -> [S.Expr] -> IO AST.Module
codegen mod _ =
    let mainMod = codegenGetCharRef >> codegenPutCharRef >> codegenMain
        newAst  = runLLVM mod mainMod
    in  printAst newAst >> return newAst

printAst :: AST.Module -> IO ()
printAst ast = withContext $ \context ->
    withModuleFromAST context ast moduleLLVMAssembly >>= B.putStrLn
