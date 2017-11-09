import Data.Char(toUpper)

stringToUpper :: String -> String
stringToUpper [] = []
stringToUpper xs = [ toUpper x | x <- xs ]
