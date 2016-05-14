Intro
=====

Jeśli jesteś w *Prelude*, wyjdź z niego poleceniem `:q`.
Przejdź do katalogu z ćwiczeniami:

    cd exercises

Hello World
-------------

Zapisz poniższy kod w nowo utworzonym pliku helloWorld.hs:

    helloWorld :: IO ()
    helloWorld = putStrLn ("Hello World!")

1. Wywołaj środowisko REPL (Read-Eval-Print Loop) poleceniem `ghci`

2. Wpisz `:load exercises/helloWorld.hs`

3. Wywołaj `helloWorld`


Funkcja
-------

W nowym pliku: `hello.hs`
Napisz funkcję, której sygnatura wygląda następująco:

    hello :: String -> IO ()
    hello x = --tutaj kod

Hint: użyj operatora `++`
