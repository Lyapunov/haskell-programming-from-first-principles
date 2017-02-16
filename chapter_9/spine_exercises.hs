module SpineExercises where

list1  = [ x^y | x <- [1..5], y <- [2, undefined] ]
list2  = take 1 $ [ x^y | x <- [1..5], y <- [2, undefined] ]
val3   = sum [1, undefined, 3]
val4   = length [1, 2, undefined]
list5  = length $ [1, 2, 3] ++ undefined
list6  = take 1 $ filter even [1, 2, 3, undefined]
list7  = take 1 $ filter even [1, 3, undefined]
list8  = take 1 $ filter odd [1, 3, undefined]
list9  = take 2 $ filter odd [1, 3, undefined]
list10 = take 3 $ filter odd [1, 3, undefined]


main :: IO ()
main = do
--   print list1 -- fails
  print list2
--  print val3 -- fails
  print val4
--  print list5 -- fails
  print list6
--  print list7 -- fails -- reaches the undef
  print list8
  print list9
--  print list10 -- reaches the undef
