cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea

testWooBar :: [String]
testWooBar = [ if 5 > 3 then "Woo " else "Boo", if 'a' > 'b' then "Foo" else "Bar"]
test4 :: Integer
test4 = 4 * (let a = 9 in a + 1) + 2
test4' :: Integer
test4' = 4 * (if 10 > 5 then 10 else 0) + 2
testSquare :: [(Integer, Integer, Integer)]
testSquare = [let square x = x * x in (square 5, square 3, square 2 )]
