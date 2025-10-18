-- ex 3.11

-- a)
myAppend :: [a] -> [a] -> [a]
myAppend xs ys = foldr (:) ys xs

-- b)

myConcat :: [[a]] -> [a]
myConcat = foldr (++) []

-- c)

myReverseR :: [a] -> [a]
myReverseR = foldr (\x acc -> acc ++ [x]) []

-- d)

myReverseL :: [a] -> [a]
myReverseL xs = foldl (flip (:)) [] xs

-- e)

myElem :: (Eq a) => a -> [a] -> Bool
myElem x xs = any (x ==) xs
