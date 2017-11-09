wv :: String -> String

wv [] = []
wv a = filter (\a -> notElem a "aeiouAEIOU") a
