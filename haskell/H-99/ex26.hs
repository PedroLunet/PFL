combinations :: Int -> [a] -> [[a]]
combinations 0 _  = [[]]
combinations _ [] = []
combinations k (x:xs) = (map (x:) (combinations (k-1) xs)) ++ (combinations k xs)