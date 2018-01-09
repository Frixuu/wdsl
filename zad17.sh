#!/bin/bash
if [ $# -ne 2 ]
then
        echo Użycie skryptu: $0 rdzen_nazwy liczba
else
        if [ "$2" -eq "$2" ] 2>/dev/null
        then
                if [ $2 -ge 1 ]
                then
                        i=1
                        while [ $i -le $2 ]
                        do
                                touch $1$i
                                let i++
                        done
                else
                        echo Błąd: $2 jest ujemne.
                        exit 2
                fi
        else
                echo Błąd: $2 nie jest liczbą całkowitą.
                exit 1
        fi
fi
