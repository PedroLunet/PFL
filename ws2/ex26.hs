-- ex 2.6

-- a)
shortA :: [a] -> Bool
shortA l = length l < 3

-- b)
shortB :: [a] -> Bool
shortB [] = True
shortB [_] = True
shortB [_, _] = True
shortB _ = False
