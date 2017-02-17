module StringExercises where

import Data.Char

upperCaseLetterFilter :: String -> String
upperCaseLetterFilter = filter isUpper

capitalizer :: String -> String
capitalizer [] = []
capitalizer (x:xs) = (toUpper x):xs

upperizer :: String -> String
upperizer [] = []
upperizer (x:xs) = (toUpper x):upperizer(xs)

decapitalizer :: String -> Char
decapitalizer = toUpper . head

