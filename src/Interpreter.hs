{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}

module Interpreter where

import           System.IO

import           Data.Functor
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

setCurrent :: Tape a -> a -> Tape a
setCurrent (Tape xs _ ys) c = Tape xs c ys

decrCurrent :: Tape Integer -> Tape Integer
decrCurrent t = modifyCurrent t (\x -> mod (x - 1) 256)

incrCurrent :: Tape Integer -> Tape Integer
incrCurrent t = modifyCurrent t (\x -> mod (x + 1) 256)


data IntprState = IntprState (Tape Integer) [Expr] deriving (Show, Eq)

newtype Interpreter a = Interpreter { unInterpreter :: StateT IntprState IO a } deriving (Functor, Applicative, Alternative, Monad)

runIntpr :: Interpreter a -> IntprState -> IO (a, IntprState)
runIntpr = runStateT . unInterpreter

runProgram :: Interpreter String
runProgram = Interpreter . StateT $ helper
 where
  helper s@(IntprState _ []) = pure ("", s)
  helper s                   = runIntpr ((++) <$> runExpr <*> runProgram) s

runExpr :: Interpreter String
runExpr = Interpreter $ StateT $ \case
  IntprState tape@(Tape _ 0 _) (Loop es' : es) -> pure ("", IntprState tape es)
  IntprState tape es@(Loop es' : _) ->
    runIntpr runProgram (IntprState tape es')
      >>= \(first, IntprState tape' _) ->
            runIntpr ((first ++) <$> runExpr) (IntprState tape' es)
  IntprState tape (DataIncr : es) ->
    pure ("", IntprState (incrCurrent tape) es)
  IntprState tape (DataDecr : es) ->
    pure ("", IntprState (decrCurrent tape) es)
  IntprState tape (PosIncr : es) -> pure ("", IntprState (goRight tape) es)
  IntprState tape (PosDecr : es) -> pure ("", IntprState (goLeft tape) es)
  IntprState tape@(Tape _ c _) (Write : es) ->
    let output = [chr . fromIntegral $ c]
    in  (print . chr . fromIntegral $ c) >> hFlush stdout >> pure
          (output, IntprState tape es)
  IntprState tape (Read : es) -> getChar
    >>= \c -> pure ("", IntprState (setCurrent tape (toInteger . ord $ c)) es)
