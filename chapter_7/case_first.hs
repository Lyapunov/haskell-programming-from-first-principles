module CaseFirstExamples where

verdictOfMoneyBalance :: (Num a, Ord a) => a -> [Char]
verdictOfMoneyBalance x =
  case x > 1000 of
    True  -> "Great!"
    False -> "Not so great."

tellIsItPalindrome :: [Char] -> [Char]
tellIsItPalindrome x =
  case pali of
    True -> "It is palindrome."
    False -> "No, it is not palindrome."
  where pali = ( x == reverse x )

-- functionC x y = if (x > y) then x else y
functionC :: Ord a => a -> a -> a
functionC x y =
  case x > y of
    True -> x
    False -> y

-- ifEvenAdd2 x = if ( even x ) then x 2 else x
ifEvenAdd2First :: Integral a => a -> a
ifEvenAdd2First x = if ( even x ) then x + 2 else x

ifEvenAdd2Second :: Integral a => a -> a
ifEvenAdd2Second x =
  case ( even x ) of
    True  -> x + 2
    False -> x
