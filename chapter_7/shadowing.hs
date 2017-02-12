module Shadowing where

bindExp1 :: Integer -> String
bindExp1 x = let z = 10; y = 5 in
               "the integer was: " ++ show x
               ++ " and y was: "   ++ show y

bindExp2 :: Integer -> String
bindExp2 x = let x = 10; y = 5 in
               "the integer was: " ++ show x
               ++ " and y was: "   ++ show y

main :: IO ()
main = do
   putStrLn ("bindExp1 500 : " ++ ( bindExp1 500 ))
   putStrLn ("bindExp2 500 : " ++ ( bindExp2 500 ))
