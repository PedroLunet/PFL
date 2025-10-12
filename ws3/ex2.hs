-- ex 3.2

-- a)

leastDiv :: Integer -> Integer
leastDiv n = loop n 2
  where
    loop x d
      | d * d > x = n
      | x `mod` d == 0 = d
      | otherwise = loop n (d + 1)

-- b)

isPrimeFast :: Integer -> Bool
isPrimeFast n
  | n > 1 && n == leastDiv n = True
  | otherwise = False
