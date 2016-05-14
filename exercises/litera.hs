-- Sprawdź, czy pierwsza litera Twojego imienia zaczyna się na literę x (zwróć Prawdę, albo Fałsz)
-- Napisz funkcję, która to zrobi
-- Zmodyfikuj funkcję tak, żeby używała słowa kluczowego where, a potem let
-- Zmień funkcję tak, by brała dowolne imię
-- Zmień funkcję tak, by brała dowolną literę i wyraz
-- Sprawdź, czy Twoja funkcja działa też dla liczb?

module Litera where

import Data.Char

imie = "Fswalker"

startsWithX :: [Char] -> Bool
startsWithX imie =
    if 'x' == head imie then True else False
    --let litera = 'x' in if litera == head imie then True else False
    --if litera == head imie then True else False
    --where litera = 'x'
        
r1 = startsWithX imie

startsWith litera imie =
    if litera == head imie then True else False
r2 = startsWith 'x' imie       
    
startsWith2 :: Char -> [Char] -> Bool    
startsWith2 litera imie =
    if litera == (toLower $ head imie) then True else False
r3 = startsWith2 'x' imie