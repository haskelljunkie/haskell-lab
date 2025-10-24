

factorial :: Int -> Int 
factorial 0 = 1
factorial n = n * factorial (n - 1)

testvai  = factorial 5 

factorial' :: Integer -> Integer
factorial' n = product [1..n]

fibonachi :: Int -> Int 
fibonachi 0 = 0
fibonachi 1 = 1
fibonachi n = (n-1) + (n-2)
 