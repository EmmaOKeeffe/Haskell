isPalindrome :: Eq a => [a] -> Bool

isPalindrome [] = True
isPalindrome [a] = True
isPalindrome a = a == reverse a

isPalindrome xs  = (head xs == last xs) && (isPalindrome (tail (init xs)))
