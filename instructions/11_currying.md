
# 11 Currying oraz partial application

1. Załaduj do *Prelude* plik currying.hs

2. Sprawdź sygnaturę typu funkcji `dodaj5`

3. Wpisz w REPL:

        let dodaj10 = dodaj5 5

4. Sprawdź sygnaturę typu funkcji `dodaj10`. Przetestuj ją dla kilku wartości.

5. Wpisz w REPL:

        let pietnascie = dodaj10 5

6. Jaki wynik zwróci `dodaj5 5 5`


Zobaczmy, jaka jest naprawdę sygnatura typów funkcji dodaj5:

    dodaj5 :: Integer -> (Integer -> Integer)

W Haskellu nawiasy nie są potrzebne - są pomijane, ponieważ operator `->` tak działa. 

Nie jest to do końca operator - jest to po prostu typ, tak jak `Bool`, czy `Int`, a funkcja,którą definiuje jest wartością, tak jak `5`, czy `"wartosc string"`. 

To oznacza, że można ją przekazywać, jak wartość do innych funkcji. Tymi zagadnieniami zajmiemy się na kolejnych zajęciach.

Dzięki! :)
