Intro
=====

0 Hello World
-------------

Zapisz poniższy kod w pliku hellow.hs:

`helloWorld :: IO ()
helloWorld = putStrLn ("Hello World!")`

1. Uruchom linię poleceń w folderze fp-programming-course
2. Wywołaj środowisko REPL (Read-Eval-Print Loop) poleceniem `ghci`
3. Wpisz `:load exercises/helloWorld.hs`
4. Wywołaj `helloWorld`

1.1
W nowym pliku: `hello.hs`
Napisz funkcję, której sygnatura wygląda następująco:
`hello :: String -> IO ()`
`hello x = --tutaj kod`

Hint: użyj operatora `++`


1 Funkcje
---------

Zdefiniujemy prostą funkcję bezpośrednio w GHCi, która pomnoży liczbę przez 3:
`let triple x = x * 3`

1.2
Napisz funkcję, która podniesie liczbę do kwadratu.


### 2. infix, czy prefix? Oto jest pytanie!

Wywołaj w Prelude funkcję:
`id 1`

Sprawdź, jak zachowuje się dla innych wartości.
Czy działa tylko dla liczb?

`id` jest operatorem typu *prefix*
`++` jest operatorem typu *infix*

Co to znaczy?
W prelude wpisz:
`
"Lubisz " ++ "placki"
`

Teraz spróbuj:
`
++ "Lubisz " "placki"
`

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

`(/5) 10`

`(5/) 10`

`div`


### 6. Operator $

> f $ a = f a

`:i ($)`

Priorytet 0 oznacza, że operator ten ma najniższy priorytet, czyli jest wykonywany na samym końcu.
Tzn., że `$` wywołuje wszystko po prawej stronie i do tak otrzymanej wartości stosuje funkcję po lewej stronie.

Przeanalizujmy ten przykład
`(2^) $ (*30) $ 2 + 2`

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

