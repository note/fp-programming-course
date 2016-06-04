Haskellwart
===========

Witaj na kursie programowania funkcyjnego w Haskellu!

Nitrous.io
----------

[![Nitrous Quickstart](https://nitrous-image-icons.s3.amazonaws.com/quickstart.svg)](https://www.nitrous.io/quickstart?repo=https://github.com/note/fp-programming-course.git)

Jeśli już *magicznie* przeniosłeś się do Web IDE w Nitrous.io, rozpocznij swoją przygodę poleceniami:

    cd exercises
    stack ghci

Wszystkie instrukcje są ponumerowane i znajdują się w folderze *instructions*

Ćwiczenia znajdziesz w folderze *exercises*

**Powodzenia! :-) **


--------------------------------

Part 2
------

**HINT: klawisz _TAB_ automatycznie uzupełnia nazwy folderó, plików i poleceń**

Po sklonowaniu repozytorium, wykonaj następujące polecenia:

        cd fp-programming-course
        git checkout lab2
        chmod u+x ./install.sh
        ./install.sh

Jeśli masz już sklonowane repozytorium z poprzednich zajęć:

        cd fp-programming-course
        git fetch
        git checkout lab2

###Materiały

* [http://tryhaskell.org/](http://tryhaskell.org/)
* [Free book](http://learnyouahaskell.com/chapters)
* [Not Free book](http://haskellbook.com/)
* [https://wiki.haskell.org/Applications_and_libraries](https://wiki.haskell.org/Applications_and_libraries)
* [Fighting spam with haskell](https://code.facebook.com/posts/745068642270222/fighting-spam-with-haskell)


Part 3
------

To build and run tests run:

```
cabal configure --enable-tests --disable-optimization && cabal build && ./dist/build/spec/spec
```


Przykłady pochodzą lub są inspirowane książką autorstwa Chrisa Allena i Julie Moronuki: "Haskell Programming from first principles".

[Haskell book](http://haskellbook.com/)

