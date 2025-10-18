-- ex 4.2

twinPrimes :: [(Integer, Integer)]
twinPrimes = [(x, y) | (x, y) <- pairs primes, x + 2 == y]

primes :: [Integer]
primes = sieve [2 ..]

sieve :: [Integer] -> [Integer]
sieve (p : xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

pairs :: [a] -> [(a, a)]
pairs xs = zip xs (tail xs)
