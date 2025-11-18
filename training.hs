

nameGreeting' :: String -> String -> String

nameGreeting' hello person 
    | hello == "Hej" = "That is not a real Evi"
    | hello == "Bye" = "that is real Evi"
    | otherwise = hello <> " " <> person

nameGreeting'' :: String -> String -> String

nameGreeting'' greet evi = 
    greet <> " " <> evi
    where greet = "Hello"
          evi = "Evi"
        

bmiCalc ::Double -> Double -> String
bmiCalc height weight 
    | bmi <= 18.5 = "Underweight"
    | bmi > 18.5 && bmi <= 23 = "Normal"
    | otherwise = "Overweight"    
    where bmi = weight / height^2

max' :: (Ord a) => a -> a -> a
max' a b 
    | a >= b = a
    | otherwise = b


myAbs :: Int -> Int
myAbs a
    | a < 0 = -a
    | otherwise = a


describe :: Int -> String

describe n 
    | n == 1 = "One"
    | n == 2 = "Two"
    | otherwise = "Many"

safeHead :: [a] -> String
safeHead [] = "empty"
safeHead (_:_) = "not empty"

--Напиши функция Sum of list elements ,Използвай pattern matching
mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs

initials :: String -> String -> String
initials (x:_) (y:_) = [x] ++". " ++ [y] ++"."
-- за да превърнеш Char в String, можеш да използваш [x], т.е. списък от един символ.

--TODO: task number 8,9 and 10 

--makegreeting tacit programming with eta reduction

makeGreeting :: String -> String -> String
makeGreeting = (<>).(<> " ")

--makeGreeting'' with lanmbda
makeGreeting' :: String -> String -> String
makeGreeting' = \x -> \y-> (x <> " " <> y)



{-Напиши функция tripleMagicPlus:
Взима число x
Удвоява го
Добавя 1
После умножава резултата по 3
Цел: Направи я първо pointful, после pointfree.-}

tripleMagicPlus :: (Num a) => a -> a
tripleMagicPlus = \x -> (x*2 +1) * 3

tripleMagicPlus' :: (Num a ) => a -> a
tripleMagicPlus' = (*3).(+1).(*2)

{-Напиши функция lastDigit :: Int -> Int
която връща последната цифра на дадено число.
Пример:
lastDigit 789 = 9-}

lastDigit :: Int -> Int 

lastDigit n =  n `mod` 10

{-Малка рекурсия
Напиши функция countDown :: Int -> [Int]
която приема число и връща списък, който брои надолу до 0.
Пример:
countDown 5 = [5,4,3,2,1,0]-}

countDown :: Int -> [Int]

countDown 0 = []
countDown n =  n : countDown (n-1)



{-Задача 3 — Map тренировка
Напиши функция doubleAll :: [Int] -> [Int]
която удвоява всички елементи в списъка, без рекурсия.
Използвай map.-}

doubleAll :: [Int] -> [Int]
doubleAll  = map (*2)  
{-Задача 4 — Филтриране
Напиши функция onlyLong :: [String] -> [String]
която оставя само думите по-дълги от 5 символа.-}

onlyLong :: [String] -> [String]
onlyLong  = filter (\s ->  length s > 5 ) 

{-Задача 5 — Рекурсивно списъчно смятане
Напиши myLength :: [a] -> Int
която връща дължината на списък без да ползваш length.-}

myLength :: [a] -> Int
myLength [] = 0 
myLength (_:xs) = 1 +  myLength xs



{-Задача 6 — Малка логика
Напиши функция alternatingSum :: [Int] -> Int
която събира елементите на списъка, като ту един добавяш, ту един изваждаш.-}
alternatingSum :: [Int] -> Int
alternatingSum [] = 0 
alternatingSum[x] = x
alternatingSum (x:y:xs) = x - y + alternatingSum xs 

--Задача 1 — Напиши функция, която връща броя на двойките (even numbers) в списък.

countEvens :: [Int] -> Int
countEvens [] = 0
countEvens (x:xs) = if even x  then 1 +  countEvens xs else countEvens xs

--Задача 2 — Напиши функция, която връща списъка в обратен ред.
reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) =  reverseList xs ++ [x]

{-Задача 3 — Проверка дали дадено число е в списъка
Име:
contains :: Eq a => a -> [a] -> Bool
Пример:
contains 5 [1,4,5,7] = True
contains 9 [1,4,5,7] = False

Условие:
само рекурсия
чист if или pattern matching-}

contains :: Eq a => a -> [a] -> Bool
contains _ [] = False 
contains n (x:xs) = if n == x then True  else contains n xs 
    