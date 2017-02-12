module Anonymous where

triple1 :: Integer -> Integer
triple1 x = 3 * x

triple2 = (\x -> 3 * x) :: Integer -> Integer

triple3 = (\x -> 3 * x)

--- lambda pyramid
mthi1 x y z = x * y * z
mthi2 x y = \z -> x * y * z
mthi3 x = \y -> \z -> x * y * z
mthi4 = \x -> \y -> \z -> x * y * z

addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1
