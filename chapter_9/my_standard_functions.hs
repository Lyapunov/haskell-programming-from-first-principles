module MyStandardFunctions where

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: ( a -> Bool ) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = f(x) || myAny f xs

myElem1 :: Eq a => a -> [a] -> Bool
myElem1 x (y:ys) = x == y || myElem1 x ys
myElem1 x []     = False

myElem2 :: Eq a => a -> [a] -> Bool
myElem2 x = myAny ( (==) x )

myReverse :: [a] -> [a]
myReverse xl = go [] xl
   where go xl [] = xl
         go xl (y:ys) = go (y:xl) ys
