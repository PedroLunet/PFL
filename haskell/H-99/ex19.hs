rotate :: [a] -> Int -> [a]
rotate xs n
  | n >= 0  = drop n xs ++ take n xs
  | otherwise = drop ((length xs) + n) xs ++ take ((length xs) + n) xs