module TupleTasks where

-- 1. Създай tuple с две числа
pair1 :: (Int, Int)
pair1 = (2,3)

-- 2. Създай tuple със стринг и число
pair2 :: (String, Int)
pair2 = ("Haskell", 4)

-- 3. Създай tuple с три елемента (име, възраст, град)
person :: (String, Int, String)
person = ("Evi",44,"Bucharest")

-- 4. Напиши функция, която връща първия елемент на tuple (a,b)
firstOf :: (a, b) -> a
firstOf = fst

-- 5. Напиши функция, която връща втория елемент на tuple (a,b)
secondOf :: (a, b) -> b
secondOf = snd

-- 6. Напиши функция, която събира двете числа от tuple (x,y)
sumPair :: Num a => (a, a) -> a
sumPair (x,y)= (+) x y

-- 7. Функция, която умножава числата от triple (x,y,z)
prodTriple :: Num a => (a, a, a) -> a
prodTriple (x,y,z) =  x * y * z

-- 8. Размени елементите на tuple (a,b) -> (b,a)
swap :: (a, b) -> (b, a)
swap (a,b) = (b,a) 

-- 9. Функция, която взема (име, възраст) и връща описание като String
describe :: (String, Int) -> String
describe (name,age) = name ++ " " ++ show age 

-- 10. Функция, която връща True, ако поне един Bool в tuple е True
eitherTrue :: (Bool, Bool) -> Bool
eitherTrue (x,y)= x || y 

-- 11. Събери два tuple-а координати: (a,b) и (c,d) -> (a+c, b+d)
addPairs :: Num a => (a, a) -> (a, a) -> (a, a)
addPairs (a,b) (c,d) = (a+c, b+d) 

-- 12. Вземи списък от tuple-и и върни списък от първите елементи
firsts :: [(a, b)] -> [a]
firsts = map fst 

-- 13. Вземи списък от tuple-и и върни списък от вторите елементи
seconds :: [(a, b)] -> [b]
seconds  = map snd  

-- 14. Вземи три triple-а и върни tuple от първите им елементи
tripleFirsts :: ((a,b,c), (a,b,c), (a,b,c)) -> (a,a,a)
tripleFirsts ((x,_,_), (y,_,_), (z,_,_)) = (x, y, z)

-- 15. Функция, която повдига квадрат всяко число в tuple (x,y)
squarePair :: Num a => (a, a) -> (a, a)
squarePair(x,y) = (x^2,y^2 )

-- 16. Приеми списък от (име, възраст) и върни имената на пълнолетните
adults :: [(String, Int)] -> [String]
adults xs = [ name | (name, age) <- xs, age >= 18 ]


-- 17. Приеми списък от числа и върни (n, n^2) за всяко n
numberSquares :: Num a => [a] -> [(a, a)]
numberSquares  = map (\x-> (x,x^2) ) 


-- 18. Раздели списък от Int на (четни, нечетни)
splitEvenOdd :: Integral a => [a] -> ([a], [a])
splitEvenOdd = foldr (\x (evs, ods) ->
                        if even x
                        then (x:evs, ods)
                        else (evs, x:ods))
                     ([], [])

-- 19. Напиши собствена версия на zip
myZip :: [a] -> [b] -> [(a, b)]
myZip = undefined

-- 20. Даден tuple от две функции (f,g) и аргумент x — приложи и двете върху x
applyFuncs :: (a -> b, a -> c) -> a -> (b, c)
applyFuncs = undefined
