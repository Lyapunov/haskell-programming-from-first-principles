module TypeChecksAssignment where

--- Person

data Person = Person Bool deriving Show

printPerson :: Person -> IO()
printPerson person = putStrLn( show person )

--- Mood

data Mood = Blah
          | Woot deriving (Show, Eq)

settleDown x = if x == Woot
                 then Blah
                 else x

--- Sentence

type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dog"

--- Papu

data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)

-- it actually works:
equalityForall :: Papu -> Papu -> Bool; equalityForall p p' = p == p'
