-- ex 3.12

fromBits :: [Int] -> Int
fromBits [] = 0
fromBits (x : xs) = foldl (\acc bit -> acc * 2 + bit) x xs
