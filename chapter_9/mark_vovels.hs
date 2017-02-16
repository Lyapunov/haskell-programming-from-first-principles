module MarkVovels where

vovelMarker xs = map (\x -> elem x "aeiouAEIOU") xs

main :: IO()
main = do
   let word = "By omnibus I travel to Brooklyn"
   print word
   print ( vovelMarker word )
