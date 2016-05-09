module Fp.Recursion
(
    factorial,
    fibb,
    maxList
) where

-- show on table formulat for factorial
-- code comes just directly from mathematical formula
factorial :: Integer -> Integer
factorial 0 = 1
factorial x = x * factorial (x - 1)

-- give it as an exercise
-- probably students' solutions will not pass for big input - explain why
-- final solution probably should be lively coded and presented
fibb :: Integer -> Integer
fibb n = go n (0, 1)
         where
         go x (prevPrev, prev) =
            if x == 0 then prevPrev
            else go (x-1) (prev, prevPrev + prev)

-- let's assume that maxLists contains only non-negative numbers
maxList :: [Integer] -> Integer
maxList [] = error "maximum of empty list"
maxList [x] = x
maxList (h:tail) =
    if (h > maxTail) then h
    else maxTail
    where maxTail = maxList tail


