-- ex 1.2
leftHalf :: [Int] -> [Int]
leftHalf list = take ((length list) `div` 2) list

rightHalf :: [Int] -> [Int]
rightHalf list = drop ((length list) `div` 2) list
