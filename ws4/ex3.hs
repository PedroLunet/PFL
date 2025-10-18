-- ex 4.3

hamming :: [Int]
hamming = [2^i*3^j*5^k | i<-[0..], j<-[0..], k<-[0..]]

