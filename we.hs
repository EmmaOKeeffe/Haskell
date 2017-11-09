we :: [Int] -> [Int]

we [] = []
we a = filter odd a
