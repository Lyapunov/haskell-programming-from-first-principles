module MyStandardFunctions where

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: ( a -> Bool ) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = f(x) || myAny f xs
