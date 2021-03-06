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

addFive = \x -> \y -> ( if x > y then y else x ) + 5

--- mflip
--  (/) 9 3 vs. mflip (/) 9 3
mflip f = \x -> \y -> f y x

mflip2 f x y = f y x
