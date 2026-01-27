data ListItem a = Single a | Multiple Int a
  deriving (Show)

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack  [a] = [[a]]
pack (x : y : xs)
  | x == y = (takeWhile (== x) (x : y : xs)) : pack (dropWhile (== x) (x : y : xs))
  | otherwise = [x] : pack (y : xs)

encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode xs = [(length temp, head temp) | temp <- pack xs]

encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified [] = []
encodeModified xs = map aux (encode xs)
  where
    aux (i, c) 
      | i == 1 = (Single c)
      | otherwise = (Multiple i c)

decodeModified :: [ListItem a] -> [a]
decodeModified = concatMap expand
  where
    expand (Single x) = [x]
    expand (Multiple 0 _) = []
    expand (Multiple n x) = x : expand (Multiple (n-1) x)


