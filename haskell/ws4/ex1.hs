-- ex 4.1

calcPi1, calcPi2 :: Int -> Double
calcPi1 n = sum (take n [x / y | (x, y) <- zip (cycle [4, -4]) [1, 3 ..]])
calcPi2 n = 3 + sum (take (n - 1) ([x / y | (x, y) <- zip (cycle [4, -4]) [x * (x + 1) * (x + 2) | x <- [2, 4 ..]]]))
