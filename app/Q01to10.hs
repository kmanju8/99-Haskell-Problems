-- Q01to10.hs
module Q01to10 where

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
isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == reverse x

-- Problem 7
data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

-- Problem 8
compress :: (Eq a) => [a] -> [a]
compress = foldr applyIfSame []
    where applyIfSame a [] = [a]
          applyIfSame a full@(x:_) = if a == x
                                        then full
                                     else a:full

-- -- Problem 9
-- pack :: [a] -> [[a]]
-- pack = foldr applyIfSame []
--     where applyIfSame a [] = [a]
--           applyIfSame a full@(x:_) = if a == x
--                                         then full
--                                      else a:full


-- Problem 10
-- encode :: [a] -> [(Int,a)]


