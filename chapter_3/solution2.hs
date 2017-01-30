-- Solution 2

module Solution2 where

example = "Curry is awsome!"

trans1 x = x ++ "!"

trans2 x = ( x !! 4 ) : []

trans3 x = drop 9 x

main::IO ()
main = do
   putStrLn example
   putStrLn $ trans1 example
   putStrLn ( trans2 example )
   putStrLn $ trans3 example
