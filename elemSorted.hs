elemSorted :: Ord a => a -> [a] -> Bool

elemSorted _ [] = False
elemSorted x (y:ys)
  | x < y = False
  | x == y = True
  | otherwise = elemSorted x ys
