removeAt :: Int -> [a] -> (a, [a])
removeAt _ [] = error "out of bounds"
removeAt n xs = (head (drop (n - 1) xs), (take (n - 1) xs) ++ (drop n xs)) 