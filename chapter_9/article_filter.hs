module ArticleFilter where

articleFilter :: String -> [String]
articleFilter = filter ( \x -> not ( elem x ["the", "a", "an", "The", "A", "An"]) ) . words
