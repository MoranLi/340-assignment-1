luhnDouble :: Int -> Int
luhnDouble a | ((a*2)>9) = (a*2)-9 
             | otherwise  = a*2