module MyEnumFromTo where

myEnumFromTo :: Enum a => a -> a -> [a]
myEnumFromTo x y
 | fromEnum x > fromEnum y = []
 | otherwise = x : myEnumFromTo (succ x) y
