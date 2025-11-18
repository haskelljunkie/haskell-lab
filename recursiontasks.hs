
{-Задача 1 — Сумиране на списък
Напиши рекурсивна функция:
sumList :: [Int] -> Int
Връща сумата на всички числа в списъка. Базов случай: празен списък → 0
Пример:
sumList [1,2,3,4] -- 10-}

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs 

{-Задача 2 — Произведение на списък
Напиши рекурсивна функция:
productList :: [Int] -> Int
Връща произведението на всички числа в списъка.
Базов случай: празен списък → 1
Пример:
productList [2,3,4] -- 24-}

productList ::Num a => [a] -> a
productList []     = 1
productList (x:xs) = x * productList xs 

{-Задача 3 — Дължина на списък
Напиши рекурсивна функция:
myLength :: [a] -> Int
Връща броя на елементите в списъка.Не използвай length Пример: myLength [10,20,30] -- 3-}

myLength :: [a] -> Int
myLength []     =  0  
myLength (x:xs) =  1 + myLength xs  

{-Задача 4 — Брояч на нечетни числа
Напиши рекурсивна функция: countOdds :: [Int] -> Int Връща броя на нечетните числа в списъка 
Пример: countOdds [1,2,3,4,5] -- 3-}

countOdds :: [Int] -> Int
countOdds [] = 0
countOdds (x:xs) = 
   if odd x then 1  + countOdds xs 
   else countOdds xs 

{-Задача 2 — Броене на главни букви (Char)
countUpper :: String -> Int
Връща броя на главните букви в стринг чисто рекурсивно, без filter, без map.
Полезна функция:
isUpper :: Char -> Bool
Пример:
countUpper "HeLLo"  -- 3
-}
countUpper :: String -> Int 
countUpper [] = 0
countUpper (a:bc)= 
   if a`elem` ['A'..'Z'] then 1 + countUpper bc
   else countUpper bc 

   {-Задача 3 — allTrue Напиши функция:
 allTrue :: [Bool] -> Bool която: връща True само ако всички елементи в списъка са 
 True иначе → False и използва само pattern matching + рекурсия. Пример:
allTrue [True, True, False]  -- False
allTrue []                   -- True-}

allTrue :: [Bool] -> Bool 
allTrue [] = True 
allTrue (x:xs) =
   if x == False then False 
   else allTrue xs 

{-Напиши функция: alternatingSum :: [Int] -> Int
Сумира елементите на списъка, като единият добавяш, следващия изваждаш, следващия добавяш…Използвай само рекурсия и pattern matching Пример:
alternatingSum [1,2,3,4]  -- 1 - 2 + 3 - 4 = -2
alternatingSum []          -- 0
-}

alternatingSum :: [Int] -> Int
alternatingSum [] = 0
alternatingSum [x] = x
alternatingSum (x:y:xz) = x - y  + alternatingSum xz  