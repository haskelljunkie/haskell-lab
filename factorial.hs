

factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * factorial (n - 1)

testvai  = factorial 5 

factorial' :: Integer -> Integer
factorial' n = product [1..n]

