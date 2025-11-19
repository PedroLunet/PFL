-- ex 2.3

-- a)
max3, min3 :: (Ord a) => a -> a -> a -> a
max3 x y z
  | x >= y && x >= z = x
  | y >= x && y >= z = y
  | otherwise = z
min3 x y z
  | x <= y && x <= z = x
  | y <= x && y <= z = y
  | otherwise = z

-- b)

max3p, min3p :: (Ord a) => a -> a -> a -> a
max3p x y z = max x (max y z)
min3p x y z = min x (min y z)
