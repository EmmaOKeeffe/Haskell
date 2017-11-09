sumsquaresl :: Int -> Int

sumsquaresl 0 = 0
sumsquaresl n = foldl (\x y -> y^2+x) 0 [1..n]
