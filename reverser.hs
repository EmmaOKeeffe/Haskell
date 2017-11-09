reverser :: [a] -> [a]
reverser [] = []
reverser [a] = [a]
reverser a = foldr (\x y -> y++[x]) [] a
