module Anonymous where

triple1 :: Integer -> Integer
triple1 x = 3 * x

triple2 = (\x -> 3 * x) :: Integer -> Integer

triple3 = (\x -> 3 * x)
