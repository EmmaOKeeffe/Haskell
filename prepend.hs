prepend :: [a] -> [[a]] -> [[a]]

prepend [] [b] = [b]
prepend a [] = []
prepend a (b : bs) = (++) a b : prepend a bs
