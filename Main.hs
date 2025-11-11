module Main where

greetPerson :: String -> String -> String
greetPerson hello person =
    hello <> " " <> person



main :: IO ()
main = print "Hello Evi"
