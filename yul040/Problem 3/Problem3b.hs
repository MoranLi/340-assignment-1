luhnDouble :: Int -> Int
luhnDouble a | ((a*2)>9) = (a*2)-9 
             | otherwise  = a*2
luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d | (((luhnDouble a)+ b +(luhnDouble c) + d) `mod` 10) == 0 = True 
             | otherwise                                               = False