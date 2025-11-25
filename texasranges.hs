import Data.Array (Ix(range))
{-- Texas Ranges – задачи със списъци --}

{-- 1. Създай списък с всички числа от 1 до 10 --}
num1to20 :: [Int]
num1to20 = [1..20]

{-- 2. Създай списък с всички числа от 10 до 1 --}
num10to1 :: [Int]
num10to1 = [10,9..1]
{-- 3. Създай списък с всички нечетни числа от 1 до 20 --}
onlyOdd :: [Integer]
onlyOdd = [x |x <- [1..20], odd x ]
{-- 4. Създай списък с всички четни числа от 2 до 50 --}
onlyEven :: [Integer]
onlyEven = [x | x <- [2..50], even x]
{-- 5. Създай списък с всички кратни на 3 от 3 до 30 --}
modToThree :: [Integer]
modToThree = [x | x <- [3..30], x `mod` 3 == 0 ]
{-- 6. Използвай range, за да създадеш списък от 1 до 20, но с стъпка 2 --}
stepToTwo :: [Integer]
stepToTwo = [1,3..20]
{-- 7. Създай списък от 100 до 50, намалявайки с 5 на всяка стъпка --}
listDecr :: [Integer]
listDecr = [100,95..50]
{-- 8. Вземи всички числа от 1 до 100, които са кратни на 7 --}
modToSeven :: [Integer]
modToSeven = [x |x <- [1..100], x `mod` 7 == 0 ]
{-- 9. Направи списък от 10 числа, започвайки от 1.5, с стъпка 0.5 (дробни числа) --}
firstFloat :: [Float]
firstFloat = [1.5,2.0..10.0]
{-- 10. Създай обратен списък от буквите 'a' до 'z' --}
reversedString :: [Char]
reversedString = ['z', 'y' .. 'a']
{-- 11. Комбинирай два диапазона – числа от 1 до 5 и числа от 10 до 15 – в един списък --}
comBin :: [Int]
comBin = [1..5] ++ [10..15]

{-- 12. Вземи първите 10 елемента от безкрайния списък [1..] --}
takeTen :: [Int]
takeTen = take 10 [1..]
{-- 13. Вземи всички числа от 1 до 50, които са кратни на 2 и 5 едновременно --}

takeTwoandFive :: [Integer]
takeTwoandFive = [x | x <- [1..50], even x && x `mod` 7 == 0]
{-- 14. Направи списък от 5 до 50 с стъпка 5, после обърни реда на списъка --}
meshTurn :: [Int]
meshTurn = reverse  [5,10..50]
{-- 15. Създай списък с всички квадрати на числата от 1 до 10, използвайки range + map --}
veryQuads :: [Integer]
veryQuads = map (^2) $ range(1,10)
{-- 16. Вземи всички числа от 1 до 20 и филтрирай тези, чийто остатък при деление на 3 е 1 --}
veryFilter :: [Int]
veryFilter = filter (\x -> x `mod` 3 == 1) [1..20]
{-- 17. Направи списък от 1 до 30 и използвай take и drop, за да вземеш числата от 10 до 20 --}

soecialTake :: [Integer]
soecialTake = take 10 [1..30] ++ take 11 (drop 9 [1..30])  
{-- 18. Създай безкраен списък от 5,6,7,… и вземи първите 15 числа --}
infinList :: [Integer]
infinList = take 15 (cycle [5,6,7])
{-- 19. Направи списък от 1 до 50 и раздели на два списъка – четни и нечетни числа --}


customListeven :: [Int]
customListeven  =  [x | x <- [1..50], even x] 
customListodd :: [Int]
customListodd  =  [y | y <- [1..50], odd y] 

total :: [Char]
total = show customListeven ++" " ++ show customListodd
{-- 20. Създай списък от 1 до 100 и намери сумата на числата, кратни на 4 или 6 --}

customSumTo4 :: Integer
customSumTo4 = sum [x |x <-  [1..100], x `mod` 4 == 0 || x `mod` 6 == 0]

