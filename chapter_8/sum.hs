-- sum
module Summer where

summer :: (Eq a, Num a) => a -> a
summer 0 = 0
summer x = x + summer(x - 1)
