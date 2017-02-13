module FoldBool where

-- foldBool, with pattern matching
foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True  = x
foldBool3 x y False = y

-- foldBool, with if
foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b = if b then x else y

-- foldBool, with guard
foldBool :: a -> a -> Bool -> a
foldBool x y b
 | b = x
 | otherwise = y
