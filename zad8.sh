#!/bin/bash
if [ $# -ne 1 ]; then
        echo Użycie skryptu: $0 liczba_całkowita 
else
        if [ "$1" -eq "$1" ] 2>/dev/null; then
                i=1
                while [ $i -le 10 ]
                do
                        echo "$i * $1 = $(($i * $1))" 
                        let i++
                done
        else
                echo Użycie skryptu: $0 liczba_całkowita
        fi
fi
