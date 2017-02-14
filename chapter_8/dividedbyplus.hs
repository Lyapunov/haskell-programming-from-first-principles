module DividedByPlus where
                 
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n   d count
         | n >= 0 && d > 0 && n <  d = ( count, n )
         | n < 0  && d < 0 && n >= d = ( count, n )
         | n >= d && d > 0 = go (n - d) d (count + 1)
         | n < d  && d < 0 = go (n - d) d (count + 1)
         | n > 0  && d < 0 = go (n + d) d (count - 1)
         | n < 0  && d > 0 = go (n + d) d (count - 1)
         | otherwise = ( 0, 0 )

