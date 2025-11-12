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

-- TODO: Напиши функция endsWithS :: [String] -> [String], която връща само думите, завършващи на 's'.

--endsWithS :: [String] ->[String]
--endsWithS :: [Char] -> Bool
endsWithS :: [String] -> Bool
endsWithS = (\word -> last word == "s")






--TODO:Направи функция, която взима само четните числа от списък

--takeEven :: Num a => [a] -> [a]
--takeEven [] = []
--takeEven (x:xs) = map (x `mod` 2 == 0) : 
