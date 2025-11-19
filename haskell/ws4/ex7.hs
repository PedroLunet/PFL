-- ex 4.7

type Dict = [String]

readDict :: IO Dict
readDict = do
  txt <- readFile "/usr/share/dict/words"
  return (words txt)

-- a)

test :: IO ()
test = do
  dict <- readDict
  print (length dict)

-- b)

checkWord :: Dict -> String -> String
checkWord xs a = if elem a xs then a else "\ESC[7m" ++ a ++ "\ESC[0m"

-- c)

spellCheck :: Dict -> String -> String
spellCheck xs a = unwords [checkWord xs x | x <- words a]

-- d)

main :: IO ()
main = do
  dict <- readDict
  word <- getLine
  let output = spellCheck dict word
  putStrLn output
