-- Fold & списъци: ниво 1 – базови fold операции
-- 1. Напиши myLength с foldr
myLengthFold :: [a] -> Int
myLengthFold = foldr (\_ acc -> 1 + acc) 0

-- 2. Напиши mySum с foldl
mySumFold :: Num a => [a] -> a
mySumFold = foldl (+) 0

-- 3. Напиши myProduct с foldl
myProductFold :: Num a => [a] -> a
myProductFold = foldl (*) 1

-- Fold & списъци: ниво 2 – логика и проверки
-- 4. Напиши myElem с foldr
myElemFold :: Eq a => a -> [a] -> Bool
myElemFold y = foldr (\x acc -> x == y || acc) False

-- 5. Провери дали всички елементи в списъка са положителни
allPositive :: (Num a, Ord a) => [a] -> Bool
allPositive = foldr (\x acc -> x > 0 && acc) True

-- 6. Провери дали поне един елемент е 0
anyZero :: (Eq a, Num a) => [a] -> Bool
anyZero = foldr (\x acc -> x == 0 || acc) False

-- Fold & списъци: ниво 3 – малко трикове
-- 7. Обърни списък с foldl
myReverseFold :: [a] -> [a]
myReverseFold = foldl (flip (:)) []

-- 8. Вземи максимум с foldr
myMaximumFold :: Ord a => [a] -> a
myMaximumFold [] = error "празен списък"
myMaximumFold (x:xs) = foldr max x xs

-- 9. Вземи minimum с foldl
myMinimumFold :: Ord a => [a] -> a
myMinimumFold [] = error "празен списък"
myMinimumFold (x:xs) = foldl min x xs

-- Fold & списъци: ниво 4 – комбиниране на операции
-- 10. Сумирай само четните числа
sumEven :: Integral a => [a] -> a
sumEven = foldr (\x acc -> if even x then x + acc else acc) 0

-- 11. Превърни списък от Int в String
intToString :: [Int] -> String
intToString = foldr (\x acc -> show x ++ acc) ""

-- 12. Направи myFilter с foldr
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p = foldr (\x acc -> if p x then x : acc else acc) []
