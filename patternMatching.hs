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
myLength [] = 0
myLength (x:xs) = 1 + myLength xs


sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs 

describeTuple :: (Int, Int, Int) -> String

describeTuple (x, y, z)
    | x == y &&  y == z = "All equal"
    | x == y            = "First two equal"
    | otherwise         = "All different"


capital :: String -> String
capital  "" = "Empty string!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]


