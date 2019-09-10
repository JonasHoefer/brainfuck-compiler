{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}

module Interpreter where

import           Data.Function
import           Data.Char

import           Control.Applicative
import           Control.Monad
import           Control.Monad.State

import           Syntax


data Tape a = Tape [a] a [a] deriving (Eq)

instance Show a => Show (Tape a) where

  show (Tape xs c ys) = show xs ++ show [c] ++ show ys

goLeft :: Tape Integer -> Tape Integer
goLeft (Tape []       c ys) = Tape [] 0 (c : ys)
goLeft (Tape (x : xs) c ys) = Tape xs x (c : ys)

goRight :: Tape Integer -> Tape Integer
goRight (Tape xs c []      ) = Tape (c : xs) 0 []
goRight (Tape xs c (y : ys)) = Tape (c : xs) y ys

singletonTape :: a -> Tape a
singletonTape x = Tape [] x []

modifyCurrent :: Tape a -> (a -> a) -> Tape a
modifyCurrent (Tape xs c ys) f = Tape xs (f c) ys

decrCurrent :: Tape Integer -> Tape Integer
decrCurrent t = modifyCurrent t (\x -> x - 1)

incrCurrent :: Tape Integer -> Tape Integer
incrCurrent t = modifyCurrent t (+ 1)



data IntprState = IntprState (Tape Integer) [Expr]

newtype Interpreter a = Interpreter { unInterpreter :: State IntprState a } deriving (Functor, Applicative, Monad)

runIntpr :: Interpreter a -> IntprState -> (a, IntprState)
runIntpr = runState . unInterpreter

runProgram :: Interpreter String
runProgram = Interpreter . state $ helper
 where
  helper s@(IntprState _ []) = ("", s)
  helper s                   = runIntpr ((++) <$> runExpr <*> runProgram) s

runExpr :: Interpreter String
runExpr = Interpreter $ state $ \case
  IntprState tape@(Tape _ 0 _) (   Loop es' : es) -> ("", IntprState tape es)
  IntprState tape              es@(Loop es' : _ ) -> (first ++ rest, s')
   where
    (first, IntprState tape' _) = runIntpr runProgram (IntprState tape es')
    (rest , s'                ) = runIntpr runExpr (IntprState tape' es)
  IntprState tape (DataIncr : es) -> ("", IntprState (incrCurrent tape) es)
  IntprState tape (DataDecr : es) -> ("", IntprState (decrCurrent tape) es)
  IntprState tape (PosIncr : es) -> ("", IntprState (goRight tape) es)
  IntprState tape (PosDecr : es) -> ("", IntprState (goLeft tape) es)
  IntprState tape@(Tape _ c _) (Write : es) -> (output, IntprState tape es)
    where output = [chr . fromIntegral $ c]
