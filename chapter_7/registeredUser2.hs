module RegisteredUser where

newtype Username = Username String deriving Show
newtype AccountNumber = AccountNumber Integer deriving Show

data User = UnregisteredUser
          | RegisteredUser Username AccountNumber deriving Show

-- > RegisteredUser (Username "Fucker") (AccountNumber 5) 
-- RegisteredUser (Username "Fucker") (AccountNumber 5)

printUser :: User -> IO ()
printUser UnregisteredUser = putStrLn "UnregisteredUser"
printUser ( RegisteredUser (Username name)
                           (AccountNumber number) )
          = putStrLn $ name ++ " " ++ show number

-- > printUser ( RegisteredUser (Username "hello") (AccountNumber 23) )
-- > printUser UnregisteredUser
