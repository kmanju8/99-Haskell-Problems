-- Q31to40.hs
module Q31to40 where

-- Problem 31
isPrime :: Int -> Bool
isPrime 1 = False
isPrime x = null [x | y <- [2..x-1], mod x y == 0]
