data Tree a = Null | Node a (Tree a) (Tree a)
              deriving(Read, Show)

addNode :: Ord a => a -> Tree a -> Tree a
addNode p Null = Node p Null Null
addNode p (Node a l r)
  | p == a = Node a l r
  | p  < a = Node a (addNode p l ) r
  | p  > a = Node a l (addNode p r)

makeTree :: Ord a => [a] -> Tree a
makeTree [] = Null
makeTree (x:xs) = addNode x (makeTree xs)

inOrder :: Tree a -> [a]
inOrder Null = []
inOrder (Node n t1 t2) = (inOrder t1) ++ [n] ++ (inOrder t2)

mpSort :: Ord a => [a] -> [a]

mpSort = inOrder . makeTree
