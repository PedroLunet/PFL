slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice xs i f = take (f - i + 1) (drop (i - 1) xs)