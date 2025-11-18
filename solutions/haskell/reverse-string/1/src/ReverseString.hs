module ReverseString (reverseString) where

reverseString :: String -> String
reverseString "" = ""
reverseString str = last str : reverseString (init str)

