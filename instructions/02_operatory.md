
# 2 infix, czy prefix? Oto jest pytanie!

`id` jest funkcją
`++` jest operatorem typu *infix*

Co to znaczy?

W prelude wpisz:

    "Lubisz " ++ "placki"

Teraz spróbuj:

    ++ "Lubisz " "placki"

Czy można "zmusić" operator typu *infix*, żeby zachowywał się jak operator typu *prefix*?

Zmień `++` na `(++)`.

Nawiasy pomogły nam zmienić _naturę_ operatora z *infix* na *prefix*.

Czy w takim razie da się zmusić funkcję, by zachowała się jak operator infix?

1. Sprawdź jaka jest sygnatura typów funkcji `div`, poleceniem `:t div`.

2. Wywołaj ją dla różnych wartości i zobacz, jak działa.

3. Teraz spróbuj ``8 `div` 4``

Voila! Funkcja `div` zachowuje się jak operator *infix*. 
