fastExp1 :: (Num a, Integral a1) => a -> a1 -> a
fastExp1 a b = if (b == 0) then 1 
               else if (even b) then (fastExp1 a (b `div` 2))*(fastExp1 a (b `div` 2))
               else (fastExp1 a (b-1))*a