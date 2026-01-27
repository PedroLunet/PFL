range :: Int -> Int -> [Int]
-- range s e = [s..e] 
range s e 
  | s > e = []  
  | otherwise = s : range (s+1) e