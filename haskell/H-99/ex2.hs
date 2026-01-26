myButLast :: [a] -> a
myButLast [] = error "List too short"
myButLast [x] = error "List too short"
myButLast [a,b] = a
myButLast (x:xs) = myButLast xs
