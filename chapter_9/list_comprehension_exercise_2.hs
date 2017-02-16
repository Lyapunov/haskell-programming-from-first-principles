module ListComprehensionExercise2 where

mySqr  = [ x^2 | x <- [1..5] ]
myCube = [ x^3 | x <- [1..5] ]

myTuples = [ (x,y) | x <- mySqr, y <- myCube ]
myTuples2 = [ (x,y) | x <- mySqr, x < 50, y <- myCube, y < 50 ]

main :: IO()
main = do
  print mySqr 
  print myCube
  print myTuples
  print myTuples2
  print ( length myTuples )
  print ( length myTuples2 )
