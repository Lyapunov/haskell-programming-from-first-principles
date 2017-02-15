module DividedByPlus where

data DivisionResult a = Valid a a | Invalid deriving (Show, Eq)
                 
dividedBy :: Integral a => a -> a -> DivisionResult a
dividedBy num denom
    | denom > 0 = go_plus num denom 0
    | denom < 0 = go_neg  num denom 0
    | otherwise = Invalid
  where go_plus n d count
         | n >= 0 && n < d = Valid count n
         | n >= d = go_plus (n - d) d (count + 1)
         | n < 0  = go_plus (n + d) d (count - 1)
        go_neg  n d count
         | n <= 0 && n > d = Valid count n
         | n <= d = go_neg (n - d) d (count + 1)
         | n > 0  = go_neg (n + d) d (count - 1)

-- eg.: (6, -3, 0) -> (3, -3, -1) -> (0, -3, 2)
