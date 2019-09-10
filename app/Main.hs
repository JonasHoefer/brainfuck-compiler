module Main where

import           Parser
import           Interpreter

import Control.Monad.Trans
import System.Console.Haskeline


process :: String -> IO ()
process prog =
    let Just (ast, _) = runParser program prog
        (output, _)   = runIntpr runProgram (IntprState (singletonTape 0) ast)
    in  print output

main :: IO ()
main = runInputT defaultSettings loop
  where
  loop = do
    input <- getInputLine "ready> "
    case input of
      Nothing -> outputStrLn "Goodbye."
      Just input -> (liftIO $ process input) >> loop

