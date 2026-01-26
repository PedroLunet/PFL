myLast :: [a] -> a
myLast [] = error "empty list"
myLast (x : xs)
  | length xs == 0 = x
  | otherwise = myLast xs