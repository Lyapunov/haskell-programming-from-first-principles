module DividedByPlus where

data DivisionResult a = Valid a a | Invalid deriving (Show, Eq)
                 
dividedBy :: Integral a => a -> a -> DivisionResult a
dividedBy num denom
    | denom > 0 = go num    denom    0 1
    | denom < 0 = go (-num) (-denom) 0 (-1)
    | otherwise = Invalid
  where go n d count mult
         | n >= 0 && n < d = Valid count (n*mult)
         | n >= d = go (n - d) d (count + 1) mult
         | n < 0  = go (n + d) d (count - 1) mult

-- eg.: (6, -3, 0) -> (3, -3, -1) -> (0, -3, 2)
