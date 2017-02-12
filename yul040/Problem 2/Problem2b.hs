fastExp2 :: (Num a, Integral a1) => a -> a1 -> a
fastExp2 a b | (b == 0) = 1 
             | (even b) = (fastExp2 a (b `div` 2))*(fastExp2 a (b `div` 2))
             | otherwise = (fastExp2 a (b-1))*a