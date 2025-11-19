{-Задача 1:
Напиши функция, която взема списък от числа и връща нов списък, в който всяко число е увеличено с 1.
Но — ще стигнем до pointfree версията ѝ постепенно, не изведнъж.-}

numLists :: Num a => [a] -> [a]
numLists [] = [] 
numLists (x:xs) = (x + 1) : numLists xs  

numLists' ::  Num a => [a] -> [a]
numLists'  =  map (+1)   

numLists'' :: (Num a, Enum a) => [a] -> [a]
numLists''  = map succ   

{-Задача 2:
Направи функция squareEven, която: Взима списък от числа. Избира само четните числа (filter).
Връща нов списък, в който тези числа са на квадрат (map).
Можеш първо да го напишеш с lambda за map и filter, после можем да го превърнем в pointfree стил.-}

squareEven  = map(^2) . filter even  

squareEven'  = map(\x -> x^2) . filter even

{-Задача 3:Направи функция cubeOdd, която: Взима списък от цели числа.Взима само нечетните числа (filter odd).
Връща нов списък, в който тези числа са на куб (map (^3)).
Първо я напиши с lambda, после можем да я превърнем в pointfree стил.
Искаш ли да опиташ веднага?-}

cubeOdd :: [Int] -> [Int]
cubeOdd xs = map(\x -> x^3) (filter odd xs)

cubeOdd' :: [Int] -> [Int]
cubeOdd'  = map(^3) . filter odd 