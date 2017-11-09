shortest :: [[a]] -> [a]

shortest [] = []
shortest [a] = a
shortest (a:as:ass) =
  if length a < length as
    then shortest (a:ass)
    else shortest (as:ass)
