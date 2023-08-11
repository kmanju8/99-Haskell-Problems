module Main where

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    let ans = myReverse [1,2,3,4,5]
    print ans

-- Problem 1
myLast :: [a] -> a
myLast [] = error "last element of empty list" 
myLast [x] = x 
myLast (_:xs) = myLast xs

myLast' :: [a] -> a
myLast' = foldr1 (const id) -- this is a quite cool but hard to visualise partial application example

-- Problem 2
myButLast :: [a] -> a
myButLast [] = error "last element of empty list" 
myButLast [_] = error "list too short"
myButLast [x,_] = x
myButLast (_:xs) = myButLast xs

-- Problem 3
elementAt :: [a] -> Int -> a
elementAt x a = x!!(a-1)

-- Problem 4
myLength :: [a] -> Int
myLength = length

myLength' :: [a] -> Int
myLength' [] = 0
myLength' (_:xs) = myLength' xs + 1

-- Problem 5
myReverse :: [a] -> [a]
myReverse = foldl (flip(:)) []

-- Problem 6

