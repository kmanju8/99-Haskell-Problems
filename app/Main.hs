module Main where

-- import qualified Q01to10 
import qualified Q31to40

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    let ans = Q31to40.isPrime 16
    -- let ans = Q01to10.compress "aaaabccaadeeee"
    print ans
