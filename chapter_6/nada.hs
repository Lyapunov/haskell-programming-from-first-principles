module NadaType where

newtype Nada = Nada Double deriving (Eq, Show)

instance Num Nada where
  (Nada x) + (Nada y) = Nada(x + y)
  (Nada x) * (Nada y) = Nada(x * y)
  abs (Nada x) = Nada( abs x )
  signum (Nada x) = Nada(signum x)
  fromInteger x = Nada( fromInteger x )
  negate (Nada x) = Nada( negate x )

instance Fractional Nada where
  (Nada x) / (Nada y) = Nada (x / y)
  recip (Nada n) = Nada (recip n)
  fromRational r = Nada (fromRational r)
