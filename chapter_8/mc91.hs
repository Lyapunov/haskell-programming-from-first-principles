module McCarthy91Function where

mc91 :: Integer -> Integer
mc91 n
  | n >  100 = n - 10
  | n <= 100 = mc91(mc91(n+11))

main :: IO ()
main = do
  print (map mc91 [1..110])
