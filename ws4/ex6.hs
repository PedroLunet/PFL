-- ex 4.6

type AWord = String

type Line = [AWord]

type Paragraph = [Line]

-- a)

fillWords :: Int -> [AWord] -> Paragraph
fillWords _ [] = []
fillWords i (y : ys) = loop ys [y] (length y)
  where
    loop [] current _ = [current]
    loop (x : xs) current l
      | l + 1 + length x <= i = loop xs (current ++ [x]) (l + 1 + length x)
      | otherwise = current : loop xs [x] (length x)

--- b)

main :: IO ()
main = do
  txt <- getLine
  let ws = words txt
  let paragraph = fillWords 70 ws
  let formatted = unlines (map unwords paragraph)
  putStr formatted
