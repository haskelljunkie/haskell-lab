zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith'_ :: [a1] -> p -> [a2]
zipWith'_ [] _  = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys 
