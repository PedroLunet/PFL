-- ex 3.13

myGroup :: (Eq a) => [a] -> [[a]]
myGroup [] = []
myGroup (x : xs) = [x : takeWhile (x ==) xs] ++ myGroup (dropWhile (== x) xs)
