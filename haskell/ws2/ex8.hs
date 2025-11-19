-- ex 2.8

propDivs :: Integer -> [Integer]
propDivs x = [y | y <- [1 .. x - 1], x `mod` y == 0]
