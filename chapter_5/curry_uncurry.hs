module CurryUncurry where

nonsense :: Bool -> Integer
nonsense True = 666
nonsense False = 10000

typicalCurriedFunction :: Integer -> Bool -> Integer
typicalCurriedFunction i b = i + (nonsense b)

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, b) =
   i + (nonsense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)

anonymousAndManuallyNested :: Integer -> Bool -> Integer
anonymousAndManuallyNested = \i -> \b -> i + (nonsense b)

-- manual nesting again
myCurry :: Integer -> Integer -> Bool
myCurry = \x -> \y -> x `mod` 2 == y `mod` 2
