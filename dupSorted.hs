dupSorted :: Eq a => [a] -> Bool

dupSorted [] = False
dupSorted [x] = False
dupSorted (x:xs)
  | x == head xs = True
  | otherwise = dupSorted xs
