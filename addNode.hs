data Tree a = Null | Node a (Tree a) (Tree a)
              deriving(Read, Show)

addNode :: Ord a => a -> Tree a -> Tree a
addNode p Null = Node p Null Null
addNode p (Node a l r)
  | p == a = Node a l r
  | p  < a = Node a (addNode p l ) r
  | p  > a = Node a l (addNode p r)
