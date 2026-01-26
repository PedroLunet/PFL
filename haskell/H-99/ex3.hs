elementAt :: [a] -> Int -> a
elementAt [] _ = error "out of bounds"
elementAt (x : xs) n 
  | n == 1 = x
  | otherwise = elementAt xs (n - 1)