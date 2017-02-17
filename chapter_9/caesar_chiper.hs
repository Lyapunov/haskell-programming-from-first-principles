module CaesarChiper where

import Data.Char

shifter :: Int -> Char -> Char
shifter num alph 
 | alph >= 'a' && alph <= 'z' = chr ( ( ( ord alph ) - ( ord 'a' ) + num ) `mod` 26 + ord 'a' )
 | alph >= 'A' && alph <= 'Z' = chr ( ( ( ord alph ) - ( ord 'A' ) + num ) `mod` 26 + ord 'A' )
 | otherwise = alph

caesar :: Int -> String -> String
caesar num = map (shifter num) 

unCaesar :: Int -> String -> String
unCaesar num = map (shifter (-num)) 
