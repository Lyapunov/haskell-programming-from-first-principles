module TypeInference1 where

-- slappy !

addName x = x ++ " Ted"

wrapConcat x y = x ++ y

f x y = x + y + 3

main :: IO ()
main = do
   let xs = "addName \"Hello\"          " ++ " : "
       xv = addName "Hello"
       ys = "addName \"Ann\"            " ++ " : "
       yv = addName "Ann"
       zs = "wrapConcat \"Ann\" \"Todd\"  " ++ " : "
       zv = wrapConcat "Ann" "Todd"
       as = "wrapConcat \"Ambi\" \"guous\"" ++ " : "
       av = wrapConcat "Ambi" "guous"
       bs = "f 100 50                 " ++ " : "
       bv = f 100 50
       cs = "f 777 111                " ++ " : "
       cv = f 777 111
   putStrLn "=== Results ==="
   putStr xs
   print  xv
   putStr ys
   print  yv
   putStr zs
   print  zv
   putStr as
   print  av
   putStr bs
   print  bv
   putStr cs
   print  cv
