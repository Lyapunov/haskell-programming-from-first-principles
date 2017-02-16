module PoemLines where

firstSen  = "Tyger tyger, burning bright\n"
secondSen = "In the forest of the night\n"
thirdSen  = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?\n"

sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myLines :: String -> [String]
myLines [] = []
myLines sen = takeWhile ((/=) '\n') sen : ( myLines . dropWhile ((==) '\n') . dropWhile ((/=) '\n' ) ) sen

-- very primitive unit tests:)
shouldEqual =
   [ "Tyger tyger, burning bright"
   , "In the forest of the night"
   , "What immortal hand or eye"
   , "Could frame thy fearful symmetry?" ]

main :: IO () 
main = do
   print $ "Are they equal? "
           ++ show (myLines sentences == shouldEqual)
