repFirst :: Eq a => a -> a -> [a] -> [a]

repFirst x y [] = []
repFirst x w (y:ys) 
  | x == y = w : ys
  | otherwise = y : repFirst x w ys
