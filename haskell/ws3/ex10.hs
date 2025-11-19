-- ex 3.10

isPrimeFast :: Int -> Bool
isPrimeFast n
  | n < 2 = False
  | otherwise = all (\x -> n `mod` x /= 0) [2 .. floor (sqrt (fromIntegral n))]
