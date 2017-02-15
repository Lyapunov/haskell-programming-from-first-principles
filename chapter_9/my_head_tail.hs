module MyHeadTail where

myHead :: [a] -> a
myHead( x : _ ) = x

myTail :: [a] -> [a]
myTail( _ : xs ) = xs

myTail2 :: [a] -> [a]
myTail2( _ : xs ) = xs
myTail2 [] = []

safeTail :: [a] -> Maybe [a]
safeTail( _ : xs ) = Just xs
safeTail [] = Nothing

safeHead :: [a] -> Maybe a
safeHead( x : _ ) = Just x
safeHead [] = Nothing
