eleme :: Eq a => a -> [a] -> Bool

eleme _ [] = False
eleme x (y:ys)
  | x == y = True
  | otherwise = eleme x ys
