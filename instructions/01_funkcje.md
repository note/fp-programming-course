1 Funkcje
=========

### 1. Definiowanie funkcji

Zdefiniujemy prostą funkcję bezpośrednio w GHCi, która pomnoży liczbę przekazaną do tej funkcji (jako argument) przez 3:

    let triple x = x * 3

Napisz funkcję, która podniesie liczbę do kwadratu.


### 2. infix, czy prefix? Oto jest pytanie!

Wywołaj w Prelude funkcję:

    id 1

Sprawdź, jak zachowuje się dla innych wartości.
Czy działa tylko dla liczb?

`id` jest operatorem typu *prefix*
`++` jest operatorem typu *infix*

Co to znaczy?

W prelude wpisz:

    "Lubisz " ++ "placki"


Teraz spróbuj:

    ++ "Lubisz " "placki"

Zmień `++` na `(++)`.

Nawiasy pomogły nam zmienić _naturę_ operatora z *infix* na *prefix*.
