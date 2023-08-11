module Main where

import qualified Q01to10 

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    let ans = Q01to10.compress "aaaabccaadeeee"
    print ans
