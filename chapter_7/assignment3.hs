module Assignment3 where

g :: (a -> b) -> (a, c) -> (b, c)
g f (a,c) = (f(a), c)
