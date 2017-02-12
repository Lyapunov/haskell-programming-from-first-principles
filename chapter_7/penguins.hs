module Penguins where

data WherePenguinsLive =
    Galapagos
  | Antarctica
  | Australia
  | SouthAfrica
  | SouthAmerica
  deriving (Eq, Show)

data Penguin =
  Peng WherePenguinsLive
  deriving (Eq, Show)

-- is it south Africa? If so, return True.

isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica _           = False

-- general dispatcher

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive ( Peng whereItLives ) = whereItLives

-- is antarctic or galapagos penguin?

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos ) = True
galapagosPenguin _                 = False

antarcticPenguin :: Penguin -> Bool
antarcticPenguin (Peng Antarctica ) = True
antarcticPenguin _                  = False

antarcticOrGalapagosPenguin :: Penguin -> Bool
antarcticOrGalapagosPenguin p =
  galapagosPenguin p || antarcticPenguin p

main :: IO()
main = do
  putStrLn $ "galapagosPenguin( Peng Antarctica )            = " ++ show ( galapagosPenguin( Peng Antarctica ) )
  putStrLn $ "galapagosPenguin( Peng Galapagos  )            = " ++ show ( galapagosPenguin( Peng Galapagos  ) )
  putStrLn $ "antarcticPenguin( Peng Antarctica )            = " ++ show ( antarcticPenguin( Peng Antarctica ) )
  putStrLn $ "antarcticPenguin( Peng Galapagos  )            = " ++ show ( antarcticPenguin( Peng Galapagos  ) )
  putStrLn $ "antarcticOrGalapagosPenguin( Peng Galapagos  ) = " ++ show ( antarcticOrGalapagosPenguin( Peng Galapagos  ) )
  putStrLn $ "antarcticOrGalapagosPenguin( Peng SoutAfrica ) = " ++ show ( antarcticOrGalapagosPenguin( Peng SouthAfrica ) )
