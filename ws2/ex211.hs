-- ex 2.11

isPrime :: Integer -> Bool
isPrime x = length ([y | y <- [1 .. x], x `mod` y == 0]) == 2
