module Multiply where

mul :: (Integral a) => a -> a -> a
mul x 0 = 0
mul x y = x + mul x (y - 1)
