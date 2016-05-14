module Fp.Various
(
    sum_below
) where

sum_below :: Integer -> Integer
sum_below limit = sum below
    where
        below = filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1..limit-1]