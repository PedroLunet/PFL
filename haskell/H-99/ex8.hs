compress :: Eq a => [a] -> [a]
compress [] = []
compress [a] = [a]
compress (x : y : xs)
  | x == y = x : compress (delGroup (y : xs) x)
  | otherwise = x : compress (y : xs)
  where
    delGroup [] _ = []
    delGroup (y : xs) x
      | y == x = delGroup xs x
      | otherwise = y : xs





-- compress :: Eq a => [a] -> [a]
-- compress [] = []
-- compress (x : xs)
--   | elem x xs = x : compress (delAll xs x)
--   | otherwise = x : compress xs
--   where
--     delAll [] _ = []
--     delAll (x : xs) a
--       | x == a = delAll xs a
--       | otherwise = x : delAll xs a