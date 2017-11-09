lengthr :: [a] -> Int

lengthr [] = 0
lengthr [a] = 1
lengthr a = foldr (\x y -> y+1) 0 a
