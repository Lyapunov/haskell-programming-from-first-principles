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
