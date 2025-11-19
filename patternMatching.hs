lucky :: Int -> String
lucky 7 = "Tha's the lucky number"
lucky x = "Wrong!"

sayMe :: Int -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
sayMe 5 = "Five"
sayMe n = "Not Between one and five"

--Задачи Pattern patching 

isEmpty :: [a] -> Bool
isEmpty [] = True
isEmpty _ = False

firstElement :: [a] -> String
firstElement [] = "No elements"
firstElement [_] = "One element"
firstElement (_:_:_) = "More than one"

sumPair :: (Int, Int) -> Int
sumPair (x, y) = x + y

myLength :: [a] -> Int
myLength xs = foldr (\ x -> (+) 1) 0 xs


sumList :: [Int] -> Int
sumList xs = foldr (+) 0 xs

describeTuple :: (Int, Int, Int) -> String

describeTuple (x, y, z)
    | x == y &&  y == z = "All equal"
    | x == y            = "First two equal"
    | otherwise         = "All different"


capital :: String -> String
capital  "" = "Empty string!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]


{-1. Изкарай всички числа от 1 до 20, които са кратни на 3.
Без filter, само рекурсия + [1..20].-}



{-4. Направи функция countInRange :: Int -> Int -> Int
Да брои колко числа има между a и b (включително), чрез рекурсия.
Не ползвай length [a..b] — това е твърде лесно.-}
countInRange :: Int -> Int -> Int
countInRange a  b
    | a > b = 0
    | otherwise = 1 + countInRange ( a +1 ) b
--todo

   