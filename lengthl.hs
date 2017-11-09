lengthl :: [a] -> Int
lengthl [] = 0
lengthl [a] = 1
lengthl a = foldl (\x y -> x+1) 0 a
