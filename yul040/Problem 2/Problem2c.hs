fastExp3 :: (Num a, Integral a1) => a -> a1 -> a
fastExp3 a 0 = 1
fastExp3 a b | (even b) = (fastExp3 a (b `div` 2))*(fastExp3 a (b `div` 2))
fastExp3 a b | (odd b) = (fastExp3 a (b-1))*a