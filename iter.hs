iter :: Int -> (a -> a) -> a -> a
iter 0 f x = x
iter i f x = iter (i-1) f (f x)
