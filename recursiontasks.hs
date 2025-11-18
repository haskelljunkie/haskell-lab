
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