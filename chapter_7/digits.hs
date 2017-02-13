module Digits where

-- tenDigit
tensDigit :: Integral a => a -> a
tensDigit x = d
   where xLast = x     `div` 10
         d     = xLast `mod` 10

-- tenDigit2
tensDigit2 :: Integral a => a -> a
tensDigit2 = snd . (flip divMod) 10 . fst . (flip divMod ) 10 

-- hunsDigit
hunsDigit :: Integral a => a -> a
hunsDigit = snd . (flip divMod) 10 . fst . (flip divMod ) 100 

