module Factorial where

factorial :: Integer -> Integer
factorial x
 | x > 0 = x * factorial (x-1)
 | otherwise = 1
