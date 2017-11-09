sumsquaresr :: Int -> Int

sumsquaresr 0 = 0
sumsquaresr n = foldr (\x y -> x^2+y) 0 [1..n]
