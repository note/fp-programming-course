# 7 where i let

Otwórz plik: `where_let.hs`.

Możemy definiować funkcje i zagnieżdżać wyrażenia, użwając słów kluczowych `let` i `where`.

Ostatnia funkcja jest zaimplementowana z wykorzystaniem tzw. *wyrażenia lambda*.

Spróbuj określić, co zwrócą poniższe wyrażenia:

1. `let x = 5 in x`

2. `let x = 5 in x * x`

3. `let x = 5; y = 6 in x * y`

4. `let x = 3; y = 1000 in x + 3`

Weźmy przykład nr 3 i zapiszmy go w pliku:

    mult1       = x * y
        where x = 5
              y = 6
              
