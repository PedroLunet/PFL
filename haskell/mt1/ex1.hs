type Node = String   -- some city
type Dist = Int      -- some distance
type Edges = [(Node,Node,Dist)] -- directed connections

portugal :: Edges
portugal = [ ("Porto", "Aveiro", 76)
          , ("Aveiro", "Coimbra", 63)
          , ("Aveiro", "Leiria", 117)
          , ("Coimbra", "Leiria", 76)
          , ("Leiria", "Santarem", 83)
          , ("Santarem", "Lisboa", 82)
          ]

inverse :: Edges -> Edges
inverse [] = []
inverse ((a, b, d) : xs) = (b, a, d) : inverse xs


newEdges :: Edges -> Edges
newEdges xs = [(ia,fb,da + db) | (ia, fa, da) <- xs, (ib, fb, db) <- xs, fa == ib && fa /= fb && ia /= fb]


findStep :: Edges -> Node -> Node -> Maybe Dist
findStep [] _ _ = Nothing
findStep ((a, b, d) : xs) from to
    | a == from && b == to = Just d 
    | otherwise            = findStep xs from to 

pathDistance :: Edges -> [Node] -> Maybe Dist
pathDistance _ []  = Just 0
pathDistance _ [_] = Just 0
pathDistance edges (x : y : rest) = 
    case findStep edges x y of
        Nothing -> Nothing
        Just d1 ->         
            case pathDistance edges (y : rest) of
                Nothing -> Nothing
                Just d2 -> Just (d1 + d2)


shortest :: Edges -> Edges
shortest [] = []
shortest ((i,f,d):edges) = (i, f, df) : shortest edgesf
  where
    df = minimum (d : [df | (a, b, df) <- edges, a==i && b == f])
    edgesf = [(a,b,d) | (a,b,d) <- edges, a /= i || b /= f]
