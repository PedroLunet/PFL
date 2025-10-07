import Data.Traversable (for)
-- ex 3.2

leastDiv :: Integer -> Integer
leastDiv n = leastDivFrom n 2
  where
	leastDivFrom n x
	  | x > n = n
	  | n `mod` x == 0 = x
	  | otherwise = leastDivFrom n (x + 1)