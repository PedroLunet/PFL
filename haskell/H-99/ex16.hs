dropEvery :: [a] -> Int -> [a]
dropEvery xs n = helper xs n
  where
    helper [] _ = []
    helper (x:xs) 1 = helper xs n 
    helper (x:xs) k = x : helper xs (k-1)