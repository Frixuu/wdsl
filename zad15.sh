#!/bin/bash
if [ $# -ne 2 ]
then
        echo Użycie skryptu: $0 katalog rozszerzenie
else
        if [ ! -d $1 ]; then echo $1 nie jest nazwą katalogu.; exit 1; fi
        cd "$1"
        shopt -s nullglob
        for plik in *$2
        do
                if [ -r $plik ]; then cat $plik
                else echo Nie można odczytać pliku $plik.; fi
        done
fi
