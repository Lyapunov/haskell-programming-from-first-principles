module TypeExamples where

-- TisAnInteger
data TisAnInteger = TisAn Integer deriving Show
instance Eq ( TisAnInteger ) where
 (==) (TisAn u)(TisAn v) = u == v

-- TwoIntegers
data TwoIntegers = Two Integer Integer deriving Show
instance Eq ( TwoIntegers ) where
 (==) (Two a b)(Two c d) = a == c && b == d

-- StringOrInt
data StringOrInt =
   TisAnInt Int
 | TisAString String deriving Show

instance Eq ( StringOrInt ) where
 (==) (TisAnInt   u)(TisAnInt   v) = u == v
 (==) (TisAString a)(TisAString b) = a == b
 (==) _ _ = False

-- Pair a
data Pair a =
  Pair a a deriving Show

instance Eq a => Eq ( Pair a ) where
  (==) (Pair u v)(Pair a b) = u == a && v == b

-- Tuple a b
data Tuple a b =
  Tuple a b deriving Show

instance (Eq a, Eq b) => Eq ( Tuple a b ) where
  (==) (Tuple u v)(Tuple a b) = u == a && v == b

-- Which a
data Which a =
    ThisOne a
  | ThatOne a deriving Show

instance (Eq a) => Eq ( Which a ) where
  (==) (ThisOne u)(ThisOne v)  = u == v
  (==) (ThatOne u)(ThatOne v)  = u == v
  (==) _ _ = False

-- EiherOr a b
data EitherOr a b =
    Hello a
  | Goodbye b deriving Show

instance (Eq a, Eq b) => Eq( EitherOr a b ) where
  (==) (Hello s)(Hello t) = s == t
  (==) (Goodbye u)(Goodbye v) = u == v
  (==) _ _ = False
