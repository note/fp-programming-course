# 8 Wyrażenia lambda

Zapisz w REPL:

- `(\x -> x) 0`

- `(\x -> x) 1`

- `(\x -> x) "blah"`

Co to jest za funkcja?

Zdefiniuj ją w REPL, używając wyrażenia lambda!

Jak będzie wyglądała używając standardowego zapisu z `let` na początku?


## Ogólny przepis na definiowanie funkcji z `let`

    let a = b in c

## Ogólny przepis na definiowanie wyrażenia lambda

    (\a -> c) b

Przykład:

    let x = 10 in x + 9001
    (\x -> x + 9001) 10

## Ogólny przepis na definiowanie funkcji z `where`

    c where a = b

Przykład:

    x + 9001 where x = 10
    (\x -> x + 9001) 10

## Zadanie

Przepisz wyrażenie użwyając notacji `where` (plik *your_where.hs*)
