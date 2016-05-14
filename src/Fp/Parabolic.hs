module Fp.Parabolic
(
    findRoots
) where

-- Twoim zadaniem jest zaimplementowanie funkcji, ktora znajdzie miejsca zerowe zadanej funkcji kwadratowej
-- Wspolczynniki a, b, c sa przekazywane jako parameter funkcji
-- Odpowiednie wzory mozesz znalezc na http://www.matematykam.pl/miejsca_zerowe_funkcji_kwadratowej.html
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