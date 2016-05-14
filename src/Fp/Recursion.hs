module Fp.Recursion
(
    factorial,
    fibb
) where

-- Twoim zadaniem jest zaimplementowanie funkcji, ktora obliczy silnie
-- W tym celu skorzystaj z rekurcencyjnej definicji silni
factorial :: Integer -> Integer
factorial 0 = 1
factorial x = x * factorial (x - 1)

-- Twoim zadaniem jest zaimplementowanie ciagu Fibonacciego
fibb :: Integer -> Integer
fibb n = go n (0, 1)
         where
         go x (prevPrev, prev) =
            if x == 0 then prevPrev
            else go (x-1) (prev, prevPrev + prev)

