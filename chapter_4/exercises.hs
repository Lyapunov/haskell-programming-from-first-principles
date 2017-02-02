module Exercises where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = (x == reverse x)

-- note myAbs 0-5 is -5, because myAbs 0 is calculated
--      compare to myAbs (0-5)
myAbs :: Integer -> Integer
myAbs x =
   if x >= 0
      then x
      else 0-x
 
-- try f (5,4) (3,2)
f :: (a, b) -> (c, d) -> ((b,d), (a,c))
f x y = ((snd x,snd y),(fst x, fst y))
