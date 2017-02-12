module Mixer where

mixer :: (a, b) -> (c, d) -> ((b, d), (a, c))
mixer (a, b) (c, d) = ((b, d), (a, c))
