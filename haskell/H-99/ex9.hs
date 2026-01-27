pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack  [a] = [[a]]
pack (x : y : xs)
  | x == y = (takeWhile (== x) (x : y : xs)) : pack (dropWhile (== x) (x : y : xs))
  | otherwise = [x] : pack (y : xs)
