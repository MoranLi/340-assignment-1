averageThreeOne :: Fractional a => (a, a, a) -> a
averageThreeOne (a,b,c) = (a+b+c)/3
orderTriple :: (Ord a, Fractional a) => (a, a, a) -> (a, a, a)
orderTriple (a,b,c) = if(k > 0)
                      then
                          if((a>b)&&(a>c)) 
                          then 
                              if (b>c) 
                              then (c,b,a) 
                              else (b,c,a) 
                          else if((b>a)&&(b>c)) 
                              then 
                                  if (a>c) 
                                  then (c,a,b) 
                                  else (a,c,b) 
                          else 
                              if (b>a) 
                              then (a,b,c) 
                              else (b,a,c)
                      else
                          if((a>b)&&(a>c)) 
                          then 
                              if (b>c) 
                              then (c,b,a) 
                              else (b,c,a) 
                          else if((b>a)&&(b>c)) 
                              then 
                                  if (a>c) 
                                  then (c,a,b) 
                                  else (a,c,b) 
                          else 
                              if (b>a) 
                              then (a,b,c) 
                              else (b,a,c)
                      where k = averageThreeOne(a,b,c)

