-- arith4.hs
module Arith4 where

-- id :: a -> a
-- id x = x

roundTrip :: ( Show a, Read a ) => a -> a
roundTrip a = read (show a)

-- point free
roundTripPF :: ( Show a, Read a ) => a -> a
roundTripPF = read . show

-- point free general
roundTripPFG :: ( Show a, Read b ) => a -> b
roundTripPFG = read . show

main = do
  print (roundTrip 4)
  print (roundTripPF 4)
  print ( (roundTripPFG 4) :: Double )
  print (id 4)
