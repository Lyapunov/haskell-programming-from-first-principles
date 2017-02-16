module Acronyms where

getAcronym xs = [ x | x <- xs, elem x ['A'..'Z'] ]

main :: IO ()
main = do
   putStrLn ( getAcronym "Three Letter Acronym" )
   putStrLn ( getAcronym "National Aeronautics and Space Administration" )
