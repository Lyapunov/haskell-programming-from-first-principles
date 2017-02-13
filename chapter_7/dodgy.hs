module Dodgy where

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num a => a -> a
oneIsTwo = (flip dodgy) 2

main :: IO()
main = do
   putStrLn "hello"
   putStrLn( "dodgy 1 0 :" ++ show (dodgy 1 0 ) )
   putStrLn( "dodgy 1 1 :" ++ show (dodgy 1 1 ) )
   putStrLn( "dodgy 2 2 :" ++ show (dodgy 2 2 ) )
   putStrLn( "dodgy 1 2 :" ++ show (dodgy 1 2 ) )
   putStrLn( "dodgy 2 1 :" ++ show (dodgy 2 1 ) )
   putStrLn( "oneIsOne 1 :" ++ show (oneIsOne 1 ) )
   putStrLn( "oneIsOne 2 :" ++ show (oneIsOne 2 ) )
   putStrLn( "oneIsTwo 1 :" ++ show (oneIsTwo 1 ) )
   putStrLn( "oneIsTwo 2 :" ++ show (oneIsTwo 2 ) )
   putStrLn( "oneIsOne 3 :" ++ show (oneIsOne 3 ) )
   putStrLn( "oneIsTwo 3 :" ++ show (oneIsTwo 3 ) )
