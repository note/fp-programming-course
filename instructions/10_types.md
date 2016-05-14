
# 10 Typy

Poniżej znajdują się najważniejsze typy danych, o któych warto wiedzieć:

-   `Bool` - typ logiczny, przyjmuje dwie wartości: `True` albo `False`. Przydatna funkcja: `not`.

-   `Int` - liczby całkowite w ściśle określonym przedziale. Jak to sprawdzić?

    Wystarczy użyć funkcji `minBound` oraz `maxBound`.
    
        minBound :: Int
        
    Mamy również typy `Int8`, `Int16`, `Int32`, `Int64`
    
-   `Integer` - ten typ potrafi przechowywać znacznie większe liczby

-   `Double` - zmiennoprzecinkowy typ (w skrócie: dla ułamków)

-   `Scientific` - rónież zmiennoprzecinkowy typ, ale o większej pecyzji. Na tej samej zasadziej, jak `Int` i dokładniejszy/pojemniejszy `Integer`. Ten typ pochodzi z [paczki](https://hackage.haskell.org/package/scientific), nie jest wbudowany.

## Porównywanie wartości

W *Prelude* przeprowadź poniższe eksperymenty:

    let x = 5
    x == 5
    x == 6
    x < 7
    x > 3
    x /= 5

Sprawdź informacje o typie dwóch operatorów: `(==)` oraz `(<)`.

    :t (==)

    :t (<)

Nie tylko typy liczbowe mogą być między sobą porównywane:

    'a' == 'a'
    'a' == 'b'
    'a' < 'b'
    'a' > 'b'
    'a' == 'A'
    "Michal" == "Adam"

Kto jest większy: Michal, czy Adam? ;-)

    "Michal" < "Adam"
    "Michal" > "Adam"

Czym "pod spodem" jest tak naprawdę typ `String`?

Spróbuj zatem porównać dwie listy znaków, złożone z pierwszych liter twojego imienia i nazwiska (albo dowolnych innych):

    [ 'm', 'i', 'c' ] < [ 'g', 'r', 'y' ]

Wróćmy do liczb. Czy porównywanie list zawierających liczby działa?

    [ 1, 2, 3 ] < [ 3, 2, 1 ]


## AND i OR - operatory logiczne

- `&&` - operator AND
- `||` - operator OR

Jak sprawdzić sygnaturę typów dla tych operatorów?
Co przyjmują, zwracają, jak działają?

    :t (&&)
    :t (||)
    :i Bool
    True && True
    False && True
    False || True
    False || False

Jak zmienić wartość typu Bool na przeciwną?

    not True

## Wyrażenia warunkowe - IF

    if True then "Prawda" else "Falsz"
    if False then "Prawda" else "Falsz"

Sprawdź, czy pierwsza litera Twojego imienia równa się 'x'. Zadanie kontynuuj w pliku *litera.hs*.

## Tuple - krotki

Jak zwrócić z funkcji więcej niż jedną wartość na raz?

Tuple na ratunek! (sprawdź typ każdego wyrażenia)

    (1, 2)
    ('a', 8)
    (1 :: Integer, "boom")

2 podstawowe funkcje do operowania na krotkach, to `fst` oraz `snd`.

    fst (1, [1,2,3])
    snd ('a', [1,2,3])
    fst ('a', [1,2,3]) : "bc"


## Listy zagnieżdżone

1. Stwórz 2 listy: *koty* i *psy*, zawierające nazwy zwierzaków.

2. Połącz je w jedną listę.

3. Sprawdź jej typ.

//TODO remove

    let koty = [ "puszek", "okruszek" ]
    let psy = [ "reksio", "szarik" ]
    let zwierzaki = koty ++ psy
    :t zwierzaki


## sygnatury_zadanie.png

Na kartkach dopasujcie sygnatury do funkcji.
Gdy już zapiszecie odpowiedzi - sprawdźcie w REPLu!
