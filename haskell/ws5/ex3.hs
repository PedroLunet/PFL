-- ex 5.3

data Suit = Clubs | Spades | Hearts | Diamonds
  deriving (Show, Eq, Ord, Enum, Bounded)

data Face = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
  deriving (Show, Eq, Ord, Enum, Bounded)

data Card = Card Face Suit
  deriving (Show, Eq)

allCards :: [Card]
allCards = [Card face suit | face <- [minBound .. maxBound], suit <- [minBound .. maxBound]]

-- a)

cmp1 :: Card -> Card -> Ordering
cmp1 (Card f1 s1) (Card f2 s2)
  | s1 == s2 && f1 == f2 = EQ
  | s1 == s2 && f1 > f2 = GT
  | s1 == s2 && f1 < f2 = LT
  | s1 > s2 = GT
  | otherwise = LT

-- b)

cmp2 :: Card -> Card -> Ordering
cmp2 (Card f1 s1) (Card f2 s2)
  | f1 == f2 && s1 == s2 = EQ
  | f1 == f2 && s1 > s2 = GT
  | f1 == f2 && s1 < s2 = LT
  | f1 > f2 = GT
  | otherwise = LT
