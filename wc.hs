import Data.Char(isLower)
import Data.Char(isSpace)
import Data.Char(isDigit)

wc :: String -> String

wc [] = []
wc " " = " "
wc a = filter (\a -> isLower a || isSpace a || isDigit a) a
