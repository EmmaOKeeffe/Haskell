import Data.Char(toUpper)

capitalise :: String -> String
capitalise [] = []
capitalise (x:xs) = toUpper x: capitalise xs
