#!/bin/bash
if [ $# -ne 1 ]; then
        echo Użycie skryptu: $0 nazwa_pliku
else
        cat $1 && echo Plik $1 został wyświetlony poprawnie. || echo Plik $1 nie został wyświetlony poprawnie.
fi
