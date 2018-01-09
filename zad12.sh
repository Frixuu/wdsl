#!/bin/bash
if [ $# -ne 2 ]
then
        echo Użycie skryptu: $0 -opcja plik
else
        if [ ! -f $2 ]
        then
                echo Plik $2 nie istnieje!
                exit 1
        fi
        if [ $1 = "-h" ]
        then
                head -10 $2
        elif [ $1 = "-t" ]
        then
                tail -10 $2
        elif [ $1 = "-a" ]
        then
                cat $2
        else
                echo Nieznana opcja!
                exit 2
        fi
fi
