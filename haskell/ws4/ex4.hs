-- ex 4.4

-- a)

merge :: [Integer] -> [Integer] -> [Integer]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  | x == y = x : merge (dropWhile (== x) xs) (dropWhile (== y) ys)
  | x < y = x : merge (dropWhile (== x) xs) (y : ys)
  | otherwise = y : merge (x : xs) (dropWhile (== y) ys)

-- b)

hamming :: [Integer]
hamming =
  1
    : merge
      (map (2 *) hamming)
      ( merge
          (map (3 *) hamming)
          (map (5 *) hamming)
      )
