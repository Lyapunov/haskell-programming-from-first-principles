module ListComprehensionExercise where

mySqr = [ x^2 | x <- [1..5] ]

question1 = [ x | x <- mySqr, rem x 2 == 0 ]
question2 = [ (x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50 ]
question3 = take 5 [ (x, y) | x <- mySqr
                   , y <- mySqr, x < 50, y > 50 ]
question4 = [ (x, y) | x <- mySqr, y <- mySqr, x < 50, y < 50 ]
question5 = take 5 [ (x, y) | x <- mySqr
                   , y <- mySqr, x < 50, y < 50 ]


main :: IO ()
main = do
   print question1
   print question2
   print question3
   print question4
   print question5
