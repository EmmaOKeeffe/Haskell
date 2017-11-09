evalPoly :: Int -> [Int] -> Int

evalPoly x [] = 0
evalPoly x (a:as) = a + x * evalPoly x as
