module MyEnumFromTo where

myEnumFromTo :: Enum a => a -> a -> [a]
myEnumFromTo x y
 | fromEnum x > fromEnum y = []
 | otherwise = x : myEnumFromTo (succ x) y

-- piece of cake
eftBool :: Bool -> Bool -> [Bool]
eftBool True False  = []
eftBool True True   = [True]
eftBool False True  = [False, True]
eftBool False False = [False]

-- just for fun
eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd GT EQ = []
eftOrd GT LT = []
eftOrd EQ LT = []
eftOrd LT LT = [LT]
eftOrd EQ EQ = [EQ]
eftOrd GT GT = [GT]
eftOrd LT EQ = [LT, EQ]
eftOrd EQ GT = [EQ, GT]
eftOrd LT GT = [LT, EQ, GT]

-- ordering is easy for Int
eftInt :: Int -> Int -> [Int]
eftInt x y
 | x > y = []
 | otherwise = x : eftInt (succ x) y

-- ordering is easy for Char as well
eftChar :: Char -> Char -> [Char]
eftChar x y
 | x > y = []
 | otherwise = x : eftChar (succ x) y
