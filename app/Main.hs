module Main where

import           Parser
import           Interpreter


prog =
    "++++[>++++<-]>[>+>++>[+++++++>]+++[<]>-]>>>>>>>>-.<<<<.<..+++.<.>>>>.<<<.+++.------.>-.<<+.<------."


main :: IO ()
main =
    let Just (ast, _) = runParser program prog
        (output, _)   = runIntpr runProgram (IntprState (singletonTape 0) ast)
    in  print output


