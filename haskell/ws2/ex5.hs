-- ex 2.5

safetailC :: [a] -> [a]
safetailC l =
  if null l
    then []
    else tail l

safetailG :: [a] -> [a]
safetailG l
  | null l = []
  | otherwise = tail l

safetailP :: [a] -> [a]
safetailP [] = []
safetailP (_ : xs) = xs
