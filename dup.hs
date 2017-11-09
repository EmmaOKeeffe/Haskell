eleme :: Eq a => a -> [a] -> Bool

eleme _ [] = False
eleme x (y:ys)
  | x == y = True
  | otherwise = eleme x ys


dup :: Eq a => [a] -> Bool

dup [] = False
dup [x] = False
dup (x:xs)
  | eleme x xs == True = True
  | otherwise = dup xs
