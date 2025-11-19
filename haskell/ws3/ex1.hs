-- ex 3.1

-- a)

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x : xs) = x && myAnd xs

-- b)
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x : xs) = x || myOr xs

-- c)
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (xs : xss) = xs ++ myConcat xss

-- d)
myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate x a = a : myReplicate (x - 1) a

-- e)
myII :: [a] -> Int -> a
myII (x : _) 0 = x
myII (_ : xs) n = myII xs (n - 1)

-- f)
myElem :: (Eq a) => a -> [a] -> Bool
myElem _ [] = False
myElem a (x : xs) = x == a || myElem a xs
