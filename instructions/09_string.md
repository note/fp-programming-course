# 9 String - łańcuch znaków

Na początek przyjrzyjmy się różnym typom.

Jak pamietacie, typy sprawdza się poleceniem `:type` (w skrócie `:t`)


    :t 'a'

    :t "Hello!"

    :i String


`:i` to `:info` - służy do wyświetlania informacji na temat operatorów, funkcji, itd.

Do wypisywania stringów służy polecenie `print`:

    print "Hello!"

Pozostałe 2 najczęściej wykorzystywane polecenia to:

    putStrLn "Hello!"

oraz

    putStr "Hello!"

Czym one się różnią?


Czas na załadowanie pliku `print1.hs`

Kolejny plik to `print2.hs`

Co dzieje się w kolejnych linijkach?

Parę słów o *scope*.

## Ćwiczenia

Czy coś należy poprawić w poniższych linijkach?

1. `++ [1, 2, 3] [4, 5, 6]`

2. `'<3' ++ ' Haskell'`

3. `concat ["<3", " Haskell"]`

Sprawdź w *REPL*!

## Operacje na listach - przydatne funkcje

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

## Zadanie

Zadanie znajduje się w pliku *listy_zadania.png* 