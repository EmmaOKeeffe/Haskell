iter :: Int -> (a -> a) -> a -> a
iter 0 f x = x
iter n f x = iter (n-1) f (f x)

pow :: Int -> Int -> Int
pow 0 n = 0
pow x n = iter 1 (^n) x

squareall :: [Int] -> [Int]

squareall [] = []
squareall (a:as) = pow a 2: squareall as
