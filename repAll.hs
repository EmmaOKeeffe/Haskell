repAll :: Eq a => a -> a -> [a] -> [a]

repAll x w [] = []
repAll x w (y:ys)
  | x /= y = y : repAll x w ys
  | otherwise = w : repAll x w ys
