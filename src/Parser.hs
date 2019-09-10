{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}

module Parser where

import           Control.Applicative
import           Control.Monad
import           Control.Monad.State
import           Data.Functor
import           Data.Char

import           Syntax


newtype Parser a = Parser { unParser :: StateT String Maybe a } deriving (Functor, Applicative, Alternative, Monad)

runParser = runStateT . unParser

anyChar :: Parser Char
anyChar = Parser . StateT $ \case
    []       -> empty
    (c : cs) -> pure (c, cs)

satisfy :: (Char -> Bool) -> Parser Char
satisfy pred = anyChar >>= \c -> guard (pred c) $> c

char :: Char -> Parser Char
char = satisfy . (==)

program :: Parser [Expr]
program = many expr

expr :: Parser Expr
expr =
    loop
        <|> dataIncr
        <|> dataDecr
        <|> posIncr
        <|> posDecr
        <|> writeData
        <|> readData

loop :: Parser Expr
loop = Loop <$> (char '[' *> program <* char ']')

dataIncr :: Parser Expr
dataIncr = DataIncr <$ char '+'

dataDecr :: Parser Expr
dataDecr = DataDecr <$ char '-'

posIncr :: Parser Expr
posIncr = PosIncr <$ char '>'

posDecr :: Parser Expr
posDecr = PosDecr <$ char '<'

writeData :: Parser Expr
writeData = Write <$ char '.'

readData :: Parser Expr
readData = Read <$ char ','
