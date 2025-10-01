-- ex 2.9

propDivs :: Integer -> [Integer]
propDivs x = [y | y <- [1 .. x - 1], x `mod` y == 0]

perfects :: Integer -> [Integer]
perfects x = [y | y <- [1 .. x], sum (propDivs y) == y]
