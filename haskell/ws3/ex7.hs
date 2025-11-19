-- ex 3.7

toBits :: Int -> [Int]
toBits 0 = [0]
toBits x = reverse (aux x)
  where
    aux 0 = []
    aux y = (y `mod` 2) : aux (y `div` 2)
