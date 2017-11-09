delAll :: Eq a => a -> [a] -> [a]

delAll x [] = []
delAll x (y:ys)
  | x /= y = y : delAll x ys
  | otherwise = delAll x  ys
