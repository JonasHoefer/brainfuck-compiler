{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Control.Monad.Trans
import           System.Console.Haskeline
import           LLVM.AST

import           Parser
import           Interpreter
import           Emit
import           Codegen


process :: String -> IO LLVM.AST.Module
process prog =
  let Just (ast, _) = runParser program prog
  in  print (show ast)
        >>  runIntpr runProgram (IntprState (singletonTape 0) ast)
        >>= (putStrLn . fst)
        >>  codegen (emptyModule "brainfuck") ast

main :: IO ()
main = runInputT defaultSettings loop
 where
  loop = do
    input <- getInputLine "ready> "
    case input of
      Nothing    -> outputStrLn "Goodbye."
      Just input -> liftIO (process input) >> loop

