module StringBreaker where

-- splitting string around separator char,
-- e.g. breakString ' ' "hello world"  results ["hello", "world"]
breakString :: Char -> String -> [String]
breakString _   []  = []
breakString sep str = takeWhile neqFunc str
                  : ( breakString sep . dropWhile eqFunc . dropWhile neqFunc ) str
  where neqFunc = (/=) sep
        eqFunc  = (==) sep

