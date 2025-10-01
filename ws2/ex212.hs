-- ex 2.12

myConcat :: [[a]] -> [a]
myConcat l = [x | y <- l, x <- y]

myReplicate :: Int -> a -> [a]
myReplicate a b = [b | _ <- [1 .. a]]

myII :: [a] -> Int -> a
myII l i = head [x | (j, x) <- zip [0 ..] l, i == j]
