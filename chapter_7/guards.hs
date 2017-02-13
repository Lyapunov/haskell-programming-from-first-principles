module Guards where

-- my abs example:

myAbs1 :: (Num a, Ord a) => a -> a
myAbs1 x = if ( x < 0 ) then -x else x

myAbs2 :: (Num a, Ord a) => a -> a
myAbs2 x
 | x < 0 =  -x
 | otherwise = x


-- avg grade example:

avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
 | y >= 0.9  = 'A'
 | y >  0.8  = 'B'
 | y >  0.7  = 'C'
 | y >  0.59 = 'D'
 | otherwise = 'E'
 where y = x / 100


-- calories

calories :: ( Num a, Ord a ) => a -> [Char]
calories x
 | x < 1000 = "Starving."
 | x < 1500 = "On a diet."
 | x < 2050 = "Okay."
 | x < 2500 = "A bit too much."
 | otherwise = "Definitely too much."


--  palindrome
pal :: [Char] -> Bool
pal xs
 | xs == reverse xs = True
 | otherwise = False
