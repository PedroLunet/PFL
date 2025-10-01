-- ex 2.13

-- a)
binom :: Integer -> Integer -> Integer
binom n k = product [1 .. n] `div` (product [1 .. k] * product [1 .. (n - k)])

-- b)
pascal :: Integer -> [[Integer]]
pascal n = [[binom r k | k <- [0 .. r]] | r <- [0 .. n]]
