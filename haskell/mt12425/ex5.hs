type Match = ((String,String), (Int,Int))
type MatchDay = [Match]
type League = [MatchDay]

myLeague :: League
myLeague = [
  [(("Porto","Sporting"),(2,2)),(("Benfica","Vitoria SC"),(4,0))],
  [(("Porto","Benfica"),(5,0)),(("Vitoria SC","Sporting"),(3,2))],
  [(("Vitoria SC","Porto"),(1,2)),(("Sporting","Benfica"),(2,1))]
  ]


leagueScore :: String -> League -> Int
leagueScore t = foldr (\d acc -> matchDayScore t d + acc) 0

sortByCond :: Ord a => [a] -> (a -> a -> Bool) -> [a]
sortByCond [] _ = []
sortByCond [x] _ = [x]
sortByCond l cmp = merge (sortByCond l1 cmp) (sortByCond l2 cmp) cmp
  where (l1 ,l2) = splitAt (div (length l) 2) l

merge :: Ord a => [a] -> [a] -> (a -> a -> Bool) -> [a]
merge [] l _ = l
merge l [] _ = l
merge (x:xs) (y:ys) cmp
  | cmp x y = x:(merge xs (y:ys) cmp)
  | otherwise = y:(merge (x:xs) ys cmp)


matchDayScore :: String -> MatchDay -> Int
matchDayScore _ [] = error "not found"
matchDayScore team (((ta, tb), (ga, gb)) : xs)
  | team == ta || team == tb = aux team ((ta, tb), (ga, gb))
  | otherwise = matchDayScore team xs
    where
      aux team ((ta, tb), (ga, gb))
        | (team == ta && ga > gb) || (team == tb && gb > ga) = 3
        | (team == ta && gb > ga) || (team == tb && ga > gb) = 0
        | otherwise = 1


getTeams :: MatchDay -> [String]
getTeams [] = []
getTeams xs = sortByCond ([teamA | ((teamA,teamB), (_,_)) <- xs] ++ [teamB | ((teamA,teamB), (_,_)) <- xs]) (<)

myComparator :: (Ord a1, Ord a2) => (a2, a1) -> (a2, a1) -> Bool
myComparator (name1, score1) (name2, score2)
      | score1 /= score2 = score1 > score2 
      | otherwise        = name1 < name2

ranking:: League -> [(String,Int)]
ranking [] = []
ranking (x : xs) = sortByCond [(s,leagueScore s (x : xs)) | s <- getTeams x] myComparator


winner :: Match -> String 
winner ((ta, tb),(ga, gb))
  | ga > gb = ta
  | gb > ga = tb
  | otherwise = "draw"

numMatchDaysWithDraws :: League -> Int
numMatchDaysWithDraws = length .filter (any ((== "draw") . winner))


bigWins :: League -> [(Int,[String])]
bigWins league = [(i, [winner match | match@(_ , (score1, score2)) <- matchDay, abs (score1 - score2) >= 3])| (i, matchDay) <- zip [1..] league]
