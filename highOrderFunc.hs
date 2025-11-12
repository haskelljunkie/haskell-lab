zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith'_ :: [a1] -> p -> [a2]
zipWith'_ [] _  = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys 

--maps and filters

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs 

squares :: Num a => [a] -> [a]
squares = map(^2) 

squares' :: Num a => [a] -> [a]
squares' [] = []
squares' (x:xs) = (x^2) : squares' xs 

-- Използвай map, за да добавиш 10 към всеки елемент от [1..5]

plusTen :: Num a => [a] -> [a]
plusTen = map (+10)

-- Използвай filter, за да извадиш само четните числа от [1..20].

evenFilter :: [Integer]
evenFilter = filter (even) [1..20]

-- Напиши функция endsWithS :: [String] -> [String], която връща само думите, завършващи на 's'.

endsWithS :: [String] ->[String]
endsWithS = filter (\word -> last word == 's')






--Направи функция, която взима само четните числа от списък
takeEven :: [Integer] -> [Integer]
takeEven = filter even

--Искаш ли да направим и takeOdd по същия начин, за упражнение?

takeOdd :: [Integer] -> [Integer]
takeOdd = filter odd

--Направи функция addOneToAll, 
--която взима списък от числа и връща нов списък, в който всеки елемент е увеличен с 1.
--Напиши го първо с lambda, после можем да го превърнем в pointfree стил.

addOneNew :: Num a => [a] -> [a]
addOneNew = map (\x -> x +1 ) 

addOneNew' :: Num a => [a] -> [a]
addOneNew' = map (+1)

{-Направи функция squareEvenNew, която:
  - Взима списък от числа.
  - Избира само четните числа (filter).
  - Връща нов списък, в който тези числа са на квадрат (map).
  - Можеш първо да го напишеш с lambda за map и filter, после можем да го превърнем в pointfree стил.-}

squareEvenNew' :: [Integer] -> [Integer]
squareEvenNew' = map(\x ->x^2) . filter even

squareEvenNew :: [Integer] -> [Integer]
squareEvenNew = map(^2).filter even

 
