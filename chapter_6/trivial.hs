-- Declarint Trivial datatype
module TrivialType where

data Trivial = Trivial' deriving Show

instance Eq Trivial where
  Trivial' == Trivial' = True
