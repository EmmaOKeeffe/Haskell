sumPoly :: [Int] -> [Int] -> [Int]

sumPoly [] [] = []
sumPoly x [] = x
sumPoly (x:xs) (y:ys) = [x + y] ++ sumPoly xs ys
