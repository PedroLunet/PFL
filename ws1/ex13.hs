--ex 1.3
--a)
second :: [Int] -> [Int]
second list = tail (take 2 list)
--b)
last :: [Int] -> [Int]
last list = take 1 (reverse list)
--c)
init :: [Int] -> [Int]
init list = reverse (drop 1 (reverse list))
--d)
middle :: [Int] -> Int
-- middle list = list !! ((length list) `div` 2)
middle list = head (drop ((length list) `div` 2) list)
--e)
checkPalindrome :: String -> Bool
checkPalindrome string = string == reverse string