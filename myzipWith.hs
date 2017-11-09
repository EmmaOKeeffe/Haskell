myzipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

myzipWith a b [] = []
myzipWith a [] c = []
myzipWith a (b:bs) (c:cs) = (a b c): myzipWith a bs cs
