module Fp.Parabolic
(
    findRoots
) where

findRoots :: (Floating a, Ord a) => a -> a -> a -> [a]
findRoots a b c =
    if (delta > 0) then
        [(-b - sqrt(delta)) / (2 * a),
        (-b + sqrt(delta)) / (2 * a)]
    else if (delta == 0) then
        [-b / (2 * a)]
    else
        []
    where
        delta = b^2 - 4 * a * c