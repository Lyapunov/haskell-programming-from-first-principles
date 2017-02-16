module MyWords where

--- Splits sentences at spaces. E.g. "mom dad" -> ["mom", "dad"]
myWords :: String -> [String]
myWords [] = []
myWords ws = (takeWhile ( (/=) ' ' ) ws) : ( myWords . dropWhile ((==) ' ') . dropWhile ((/=) ' ' ) ) ws 
