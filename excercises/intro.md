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


### 2 infix, czy prefix? Oto jest pytanie!

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


### 3 Nawiasy - kolejność działań

Nawiasy pomagają również w określeniu kolejności wykonywania działań.

Otwórz plik `nawiasy.hs`

Czy nawiasy zmienią wynik wywołania funkcji?

Gdy już odpowiedziałeś (na papierze, albo w głowie), załaduj plik `nawiasy.hs` i przekonaj się sam!


### 4 module

Kolejność wyrażeń w plikach źródłowych nie ma znaczenia. 
Załaduj `kolejnosc.hs` i sprawdź!

Spróbuj popsuć kod i wczytać jeszcze raz.
Najpier wciśnij enter bezpośrednio przed `*`

Gdy już naprawisz poprzedni błąd, na początku linii 6 wstaw jedną spację.


### 5 Działania arytmetyczne

Wypisz dowolną ujemną liczbę.

Spróbuj dodać tę liczbę do 1000.
Zamień liczby miejscami.

Nawiasy na ratunek!

Funkcja `negate`.

Dzielenie.

`(/5) 10`

`(5/) 10`

`div`


### 6 Operator $

> f $ a = f a

`:i ($)`

Priorytet 0 oznacza, że operator ten ma najniższy priorytet, czyli jest wykonywany na samym końcu.
Tzn., że `$` wywołuje wszystko po prawej stronie i do tak otrzymanej wartości stosuje funkcję po lewej stronie.

Przeanalizujmy ten przykład
`(2^) $ (*30) $ 2 + 2`

