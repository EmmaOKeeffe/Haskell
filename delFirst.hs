delFirst :: Eq a => a -> [a] -> [a]

delFirst x [] = []
delFirst x (y:ys) =
  | x == y = ys
  | otherwise = y : delFirst x ys
