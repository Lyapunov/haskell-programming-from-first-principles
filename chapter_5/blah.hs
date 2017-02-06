module Blah where

flegmaticFunction3 :: a -> a -> a -> String
flegmaticFunction3 x y z = "Blah"

flegmaticFunction2 = flegmaticFunction3 0
flegmaticFunction1 = flegmaticFunction2 0

main :: IO ()
main = do
   let a = flegmaticFunction3 53 21 10 
       b = flegmaticFunction2 33 33
       c = flegmaticFunction1 100
   putStrLn "=== Calculations ==="
   putStr   "flegmaticFunction3 53 21 10 :"
   print a
   putStr   "flegmaticFunction2 33 33    :"
   print b
   putStr   "flegmaticFunction1 100      :"
   print c
