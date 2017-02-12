averageThree :: Fractional a => a -> a -> a -> a
averageThree a b c = (a+b+c)/3
howManyAboveAverage :: (Ord a, Num t, Fractional a) => a -> a -> a -> t
howManyAboveAverage a b c = if ((a>(averageThree a b c))&&(b>(averageThree a b c))) 
                            then 2 
                            else if ((b>(averageThree a b c))&&(c>(averageThree a b c))) 
                            then 2 
                            else if ((c>(averageThree a b c))&&(a>(averageThree a b c))) 
                            then 2 
                            else 1
