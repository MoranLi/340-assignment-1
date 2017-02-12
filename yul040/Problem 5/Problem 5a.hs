f :: Double -> Double
f x = x + 1.5
g :: Double -> Double
g x = x + 2.5
h :: Double -> Double
h x = x + 3.5
compose3 :: (Double -> Double) -> (Double -> Double) -> (Double -> Double) -> Double -> Double
compose3 f g h x = z
                  where z = f v
				           where v = g y
					                where y = h x
