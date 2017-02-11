module TypeKwonDoo where

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = (f x == y)

-- Try: chk ((+) 1) 4 5 :)

arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i j = (f j)

-- Try: arith ((+) 1) 10 5
