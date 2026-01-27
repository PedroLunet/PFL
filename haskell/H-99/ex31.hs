isPrime :: Int -> Bool
isPrime n = [x | x <- [1..n], n `mod` x == 0] == [1,n]