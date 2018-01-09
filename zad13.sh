#!/bin/bash
if [ $# -ne 1 ]
then
        echo Użycie skryptu: $0 plik
else
        if [ ! -e $1 ]
        then
                echo Plik lub katalog nie istnieje.
        else
                if [ -f $1 ]; then echo Jest to plik.; fi
                if [ -d $1 ]; then echo Jest to katalog.; fi
                if [ -s $1 ]; then echo Jest on niepusty.; fi
                if [ -r $1 ]; then echo Można go czytać.; fi
                if [ -w $1 ]; then echo Można do niego pisać.; fi
                if [ -x $1 ]; then echo Jest on wykonywalny.; fi
        fi
fi
