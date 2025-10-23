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
        

    