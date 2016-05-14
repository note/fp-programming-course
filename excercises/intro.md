Intro
=====

0 Hello World
-------------

Zapisz poniższy kod w pliku hellow.hs:

    helloWorld :: IO ()
    helloWorld = putStrLn ("Hello World!")

1. Uruchom linię poleceń w folderze fp-programming-course
2. Wywołaj środowisko REPL (Read-Eval-Print Loop) poleceniem `ghci`
3. Wpisz `:load exercises/helloWorld.hs`
4. Wywołaj `helloWorld`

1.1
W nowym pliku: `hello.hs`
Napisz funkcję, której sygnatura wygląda następująco:

    hello :: String -> IO ()
    hello x = --tutaj kod

Hint: użyj operatora `++`


1 Funkcje
---------

Zdefiniujemy prostą funkcję bezpośrednio w GHCi, która pomnoży liczbę przez 3:

    let triple x = x * 3

1.2
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

Zmień `++` na `(++)`. Pomogło?


### 3. Nawiasy - kolejność działań

Nawiasy pomagają również w określeniu kolejności wykonywania działań.

Otwórz plik `nawiasy.hs`

Czy nawiasy zmienią wynik wywołania funkcji?

Gdy już odpowiedziałeś (na papierze, albo w głowie), załaduj plik `nawiasy.hs` i przekonaj się sam!


### 4. Moduły

Kolejność wyrażeń w plikach źródłowych nie ma znaczenia.
Załaduj `kolejnosc.hs` i sprawdź!

Spróbuj popsuć kod i wczytać jeszcze raz.
Najpier wciśnij enter bezpośrednio przed `*`

Gdy już naprawisz poprzedni błąd, na początku linii 6 wstaw jedną spację.


### 5. Działania arytmetyczne

Wypisz dowolną ujemną liczbę.

Spróbuj dodać tę liczbę do 1000.
Zamień liczby miejscami.

Nawiasy na ratunek!

Funkcja `negate`.

Dzielenie.

    (/5) 10
    (5/) 10
    div


### 6. Operator $

> f $ a = f a

    :i ($)

Priorytet 0 oznacza, że operator ten ma najniższy priorytet, czyli jest wykonywany na samym końcu.
Tzn., że `$` wywołuje wszystko po prawej stronie i do tak otrzymanej wartości stosuje funkcję po lewej stronie.

Przeanalizujmy ten przykład
    (2^) $ (*30) $ 2 + 2


### 7. where i let

Otwórz plik: `where_let.hs`.

Możemy definiować funkcje i zagnieżdżać wyrażenia, użwając słów kluczowych `let` i `where`.
Na koniec, tę samą funkcję wyrażamy wykorzystując tzw. *wyrażenie lambda*.

Spróbuj określić, co zwrócą poniższe wyrażenia:

1. `let x = 5 in x`

2. `let x = 5 in x * x`

3. `let x = 5; y = 6 in x * y`

4. `let x = 3; y = 1000 in x + 3`

Weźmy przykład nr 3 i zapiszmy go w pliku:

    mult1       = x * y
        where x = 5
              y = 6
              

### 8. Wyrażenia lambda

Zapisz w REPL:

- `(\x -> x) 0`

- `(\x -> x) 1`

- `(\x -> x) "blah"`

Co to jest za funkcja?

Zdefiniuj ją w REPL, używając wyrażenia lambda!

Jak będzie wyglądała używając standardowego zapisu z `let` na początku?

#### Ogólny przepis na definiowanie funkcji z `let`

    let a = b in c

#### Ogólny przepis na definiowanie wyrażenia lambda

    (\a -> c) b

Przykład:

    let x = 10 in x + 9001
    (\x -> x + 9001) 10

#### Ogólny przepis na definiowanie funkcji z `where`

    c where a = b

Przykład:

    x + 9001 where x = 10
    (\x -> x + 9001) 10

#### Zadanie domowe

Przepisz poniższe wyrażenie użwyając notacji `where` (w pliku *.hs)

1. `let x = 3; y = 1000 in x * 3 + y`

2. `let y = 10; x = 10 * 5 + y in x * 5`

3. `let x = 7; y = negate x; z = y * 10 in z / x + y`

### 9. String - łańcuchy znaków

Na początek przyjrzyjmy się różnym typom.

Typy sprawdza się poleceniem `:type` (w skrócie `:t`)


    :t 'a'

    :t "Hello!"

    :i String


`:i` to `:info` - służy do wyświetlania informacji na temat operatorów, funkcji, itd.

Do wypisywania stringów służy polecenie `print`:

    print "Hello!"

Mamy również polecenie:

    putStrLn "Hello!"

oraz

    putStr "Hello!"

Czym one się różnią?


Czas na załadowanie pliku `print1.hs`

Kolejny plik to `print2.hs`

Co dzieje się w kolejnych linijkach?

#### Ćwiczenia

Czy coś należy poprawić w poniższych linijkach?

1. `++ [1, 2, 3] [4, 5, 6]`

2. `'<3' ++ ' Haskell'`

3. `concat ["<3", " Haskell"]`

Sprawdź w *REPL*!

#### Funkcje do operacji na listach

1.  Operator `:` - (tzw. *cons*). Służy do dodawania elementu do listy

    `'r' : "yba"`

2.  `head` - zwraca pierwszy element listy

    `head "head"`

3.  `tail` - zwraca całą listę z wyjątkiem pierwszego elementu

    `tail "gogon"`

4.  `take n` - zwraca *n* pierwszych elementów z listy

    `take 2 "gogon"`

5.  `drop n` - pomija *n* pierwszych elementów z listy

    `drop 4 "ile liter"`

6.  Operator `!! n` - zwraca *n*-ty element

    `"kod" !! 2`

### 10. Typy

Poniżej znajdują się najważniejsze typy danych, o któych warto wiedzieć:

-   `Bool` - typ logiczny, przyjmuje dwie wartości: `True` albo `False`. Przydatna funkcja: `not`.

-   `Int` - liczby całkowite w ściśle określonym przedziale. Jak to sprawdzić?

    Wystarczy użyć funkcji `minBound` oraz `maxBound`.
    
        minBound :: Int
        
    Mamy również typy `Int8`, `Int16`, `Int32`, `Int64`
    
-   `Integer` - ten typ potrafi przechowywać znacznie większe liczby

-   `Double` - zmiennoprzecinkowy typ (w skrócie: dla ułamków)

-   `Scientific` - rónież zmiennoprzecinkowy typ, ale o większej pecyzji. Na tej samej zasadziej, jak `Int` i dokładniejszy/pojemniejszy `Integer`. Ten typ pochodzi z [paczki](https://hackage.haskell.org/package/scientific), nie jest wbudowany.

#### Porównywanie wartości

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


#### AND i OR - operatory logiczne

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

#### Wyrażenia warunkowe - IF

    if True then "Prawda" else "Falsz"
    if False then "Prawda" else "Falsz"

Sprawdź, czy pierwsza litera Twojego imienia równa się 'x'. Zadanie kontynuuj w pliku *litera.hs*.

#### Tuple - krotki

Jak zwrócić z funkcji więcej niż jedną wartość na raz?

Tuple na ratunek! (sprawdź typ każdego wyrażenia)

    (1, 2)
    ('a', 8)
    (1 :: Integer, "boom")

2 podstawowe funkcje do operowania na krotkach, to `fst` oraz `snd`.

    fst (1, [1,2,3])
    snd ('a', [1,2,3])
    fst ('a', [1,2,3]) : "bc"


#### Listy zagnieżdżone

1. Stwórz 2 listy: *koty* i *psy*, zawierające nazwy zwierzaków.

2. Połącz je w jedną listę.

3. Sprawdź jej typ.

    let koty = [ "puszek", "okruszek" ]
    let psy = [ "reksio", "szarik" ]
    let zwierzaki = koty ++ psy
    :t zwierzaki


#### sygnatury_zadanie.png

Na kartkach dopasujcie sygnatury do funkcji.
Gdy już zapiszecie odpowiedzi - sprawdźcie w REPLu! 

### 11. Currying oraz partial application

1. Załaduj do *Prelude* plik currying.hs

2. Sprawdź sygnaturę typu funkcji `dodaj5`

3. Wpisz w REPL: `let dodaj10 = dodaj5 5`

4. Sprawdź sygnaturę typu funkcji `dodaj10`. Przetestuj ją dla kilku wartości.

5. Wpisz w REPL: `let pietnascie = dodaj10 5`

6. Jaki wynik zwróci `dodaj5 5 5`

Zobaczmy, jaka jest naprawdę sygnatura typów funkcji dodaj5:

    dodaj5 :: Integer -> (Integer -> Integer)

W Haskellu nawiasy nie są potrzebne - są pomijane, ponieważ operator `->` tak działa. Nie jest to do końca operator - jest to po prostu typ, tak jak `Bool`, czy `Int`, a funkcja, którą definiuje jest wartością, tak jak `5`, czy `"wartosc string"`. To oznacza, że można ją przekazywać, jak wartość do inncy funkcji. Tymi zagadnieniami zajmiemy się na kolejnych zajęciach.

Dzięki! :)
     