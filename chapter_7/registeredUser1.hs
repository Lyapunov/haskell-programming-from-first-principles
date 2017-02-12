module RegisteredUser where

newtype Username = Username String deriving Show
newtype AccountNumber = AccountNumber Integer deriving Show

data User = UnregisteredUser
          | RegisteredUser Username AccountNumber deriving Show

-- > RegisteredUser (Username "Fucker") (AccountNumber 5) 
-- RegisteredUser (Username "Fucker") (AccountNumber 5)
