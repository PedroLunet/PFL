insertAt :: a -> [a] -> Int -> [a]
insertAt a [] _ = [a]
insertAt a xs n = (take (n - 1) xs) ++ [a] ++ (drop (n - 1) xs)