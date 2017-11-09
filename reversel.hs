reversel :: [a] -> [a]
reversel [] = []
reversel [a] = [a]
reversel a = foldl (\y x -> x:y) [] a
