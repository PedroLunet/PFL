type Match = ((String,String), (Int,Int))
type MatchDay = [Match]
type League = [MatchDay]

myLeague :: League
myLeague = [
  [(("Porto","Sporting"),(2,2)),(("Benfica","Vitoria SC"),(4,0))],
  [(("Porto","Benfica"),(5,0)),(("Vitoria SC","Sporting"),(3,2))],
  [(("Vitoria SC","Porto"),(1,2)),(("Sporting","Benfica"),(2,1))]
  ]

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

