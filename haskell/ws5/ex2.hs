-- ex 5.2

data Suit = Clubs | Spades | Hearts | Diamonds
  deriving (Show, Eq, Enum, Bounded)

data Face = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
  deriving (Show, Eq, Ord, Enum, Bounded)

data Card = Card Face Suit
  deriving (Show, Eq)

allCards :: [Card]
allCards = [Card face suit | face <- [minBound .. maxBound], suit <- [minBound .. maxBound]]
