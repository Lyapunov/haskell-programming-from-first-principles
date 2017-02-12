module EmployeeRank where

data Employee = Coder
              | Manager
              | Veep
              | CEO
              deriving (Eq, Ord, Show)

-- helper:
reportBoss :: Employee -> Employee -> IO()
reportBoss e e' =
  putStrLn $ show e ++ " is the boss of " ++ show e'

-- making rank visible
employeeRank :: ( Employee -> Employee -> Ordering )
              -> Employee
              -> Employee
              -> IO ()
employeeRank f e e' =
  case f e e' of
    GT -> reportBoss e e'
    EQ -> putStrLn "Neither employee is the boss"
    LT -> (flip reportBoss) e e'

-- rank1 is compare
-- rank2 is special
rankX :: Employee -> Employee -> Ordering
rankX Coder Coder = EQ
rankX Coder _     = GT
rankX _     Coder = LT
rankX a b         = compare a b

main :: IO ()
main = do
   putStrLn "employeeRank compare Coder Manager is :"
   employeeRank compare Coder Manager 
   putStrLn "employeeRank compare Coder CEO is :"
   employeeRank compare Coder CEO
   putStrLn "employeeRank compare CEO Manager is :"
   employeeRank compare CEO Manager 
   putStrLn "employeeRank rankX Coder Manager is :"
   employeeRank rankX Coder Manager 
   putStrLn "employeeRank rankX Coder CEO is :"
   employeeRank rankX Coder CEO
   putStrLn "employeeRank rankX CEO Manager is :"
   employeeRank rankX CEO Manager 
