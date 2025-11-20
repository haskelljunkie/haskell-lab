{-- 1. Напиши своя версия на length
     Пример: myLength [10,20,30] == 3 --}
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs)  = 1 + myLength xs 

{-- 2. Напиши своя версия на sum
     Пример: mySum [1,2,3,4] == 10 --}
mySum :: Num a => [a] -> a
mySum  = foldr (+) 0 

{-- 3. Напиши своя версия на product
     Пример: myProduct [1,2,3,4] == 24 --}
myProduct :: Num a => [a] -> a
myProduct  = foldr (*) 1  
{-- 4. Напиши своя версия на elem
     Пример: myElem 3 [1,2,3,4] == True --}
myElem :: Eq a => a -> [a] -> Bool
myElem а []= False
myElem a (x:xs) 
    | a == x = True 
    | otherwise = myElem a xs

{-- 5. Напиши своя версия на reverse
     Пример: myReverse [1,2,3] == [3,2,1] --}
myReverse :: [a] -> [a]
myReverse [] = []
myReverse [a] = [a]
myReverse (x:xs) = myReverse xs ++ [x]   