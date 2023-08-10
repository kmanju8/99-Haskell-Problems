module Main where

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    let ans = myButLast [1,2,3,4,17]
    print ans

-- Problem 1
myLast :: [a] -> a
myLast [] = error "last element of empty list" 
myLast [x] = x 
myLast (_:xs) = myLast xs

-- Problem 2
myButLast :: [a] -> a
myButLast [] = error "last element of empty list" 
myButLast [_] = error "list too short"
myButLast [x,_] = x
myButLast (_:xs) = myButLast xs