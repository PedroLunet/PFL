-- ex 2.7
median :: (Ord a) => a -> a -> a -> a
median x y z
  | (x >= y && x <= z) || (x <= y && x >= z) = x
  | (y >= x && y <= z) || (y <= x && y >= z) = y
  | otherwise = z

-- b)

max3, min3 :: (Ord a) => a -> a -> a -> a
max3 x y z = max x (max y z)
min3 x y z = min x (min y z)

medianSum :: (Ord a, Num a) => a -> a -> a -> a
medianSum x y z =
  (x + y + z) - max3 x y z - min3 x y z
