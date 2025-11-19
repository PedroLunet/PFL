-- ex 4.5

-- a)

import Data.Char (chr, ord)

shift13 :: Char -> Char
shift13 c
  | c >= 'a' && c <= 'z' =
      if ord c + 13 > ord 'z'
        then chr (ord c - 13)
        else chr (ord c + 13)
  | c >= 'A' && c <= 'Z' =
      if ord c + 13 > ord 'Z'
        then chr (ord c - 13)
        else chr (ord c + 13)
  | otherwise = c

main :: IO ()
main = do
  txt <- getLine
  putStr (map shift13 txt)
  putChar '\n'


-- b)

-- it works!