module Syntax where


data Expr = DataIncr | DataDecr | PosIncr | PosDecr | Loop [Expr] | Read | Write deriving (Show, Eq)
