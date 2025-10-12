-- ex 3.6

-- a)

merge :: (Ord a) => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  | x <= y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

-- b)

msort :: (Ord a) => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs =
  let (left, right) = splitAt (length xs `div` 2) xs
  in merge (msort left) (msort right)
