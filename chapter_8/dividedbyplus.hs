module DividedByPlus where

data DivisionResult a = Valid a a | Invalid deriving (Show, Eq)
                 
dividedBy :: Integral a => a -> a -> DivisionResult a
dividedBy num denom = go num denom 0
  where go n   d count
         | n >= 0 && d > 0 && n < d = Valid count n
         | n <= 0 && d < 0 && n > d = Valid count n
         | n >= d && d > 0 = go (n - d) d (count + 1)
         | n <= d && d < 0 = go (n - d) d (count + 1)
         | n > 0  && d < 0 = go (n + d) d (count - 1)
         | n < 0  && d > 0 = go (n + d) d (count - 1)
         | otherwise = Invalid

-- eg.: (6, -3, 0) -> (3, -3, -1) -> (0, -3, 2)
