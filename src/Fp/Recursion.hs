module Fp.Recursion
(
    factorial,
    fibb
) where

factorial :: Integer -> Integer
factorial 0 = 1
factorial x = x * factorial (x - 1)

fibb :: Integer -> Integer
fibb n = go n (0, 1)
         where
         go n (prevPrev, prev) =
            if n == 0 then prevPrev
            else go (n-1) (prev, prevPrev + prev)

--fibb 0 = 0
--fibb 1 = 1
--fibb n = (fibb n - 1) + (fibb n - 2)


