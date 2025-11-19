-- ex 4.3


hammingN :: Int -> [Integer]
hammingN n = [2^i * 3^j * 5^k | i <- [0..n], j <- [0..n-i], let k = n - i - j]

hammings :: [Integer]
hammings = concat [hammingN n | n <- [0..]]

