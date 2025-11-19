-- 3.14

-- a)

intercalate :: a -> [a] -> [[a]]
intercalate i [] = [[i]]
intercalate i (x : xs) = (i : (x : xs)) : [x : ys | ys <- intercalate i xs]

-- b)

permutations :: [a] -> [[a]]
permutations [] = [[]]
permutations (x : xs) = concat [intercalate x perm | perm <- permutations xs]
