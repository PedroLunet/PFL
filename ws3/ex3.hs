-- ex 3.3

nub :: (Eq a) => [a] -> [a]
nub = go []
  where
    go seen [] = []
    go seen (x : xs)
      | x `elem` seen = go seen xs
      | otherwise = x : go (seen ++ [x]) xs
