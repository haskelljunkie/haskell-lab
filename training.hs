

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