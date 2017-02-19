module MyStandardFunctions where

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: ( a -> Bool ) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = f(x) || myAny f xs

myElem1 :: Eq a => a -> [a] -> Bool
myElem1 x (y:ys) = x == y || myElem1 x ys
myElem1 x []     = False

-- myElem1 via using myAny
myElem2 :: Eq a => a -> [a] -> Bool
myElem2 x = myAny ( (==) x )

myReverse :: [a] -> [a]
myReverse xl = go [] xl
   where go xl [] = xl
         go xl (y:ys) = go (y:xl) ys

squish :: [[a]] -> [a]
squish xl = go [] xl
   where go xl [] = xl
         go xl (y:ys) = go (xl ++ y) ys

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f(x) ++ squishMap f xs

squishMap2 :: (a -> [b]) -> [a] -> [b]
squishMap2 f xl = go f xl []
   where go _ [] yl  = yl
         go f (x:xs) yl = go f xs (yl ++ f(x))

-- squish via using squishMap
squishAgain :: [[a]] -> [a]
squishAgain = squishMap ( \x -> x )

-- maximum by
myMaximumBy :: ( a -> a -> Ordering ) -> [a] -> a
myMaximumBy f (x:xs) = go x xs
   where go x [] = x
         go x (y:ys) = if f y x == GT then go y (ys) 
                                      else go x (ys)

-- minimum by
myMinimumBy :: ( a -> a -> Ordering ) -> [a] -> a
myMinimumBy f (x:xs) = go x xs
   where go x [] = x
         go x (y:ys) = if f y x == LT then go y (ys) 
                                      else go x (ys)

myMaximum :: Ord a => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: Ord a => [a] -> a
myMinimum = myMinimumBy compare
