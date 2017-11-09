-- Remove consecutive duplicates
compress :: Eq a => [a] -> [a]
compress [] = []
compress [a] = [a]
compress (x:xs)
  | x == head xs = compress xs
  | otherwise = x : compress xs
