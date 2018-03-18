#!/bin/bash
if [ $# -ne 1 ]; then
        echo Użycie skryptu: $0 liczba_całkowita 
else
        if [ "$1" -eq "$1" ] 2>/dev/null; then
                for i in {1..10}
                do
                        echo "$i * $1 = $(($i * $1))" 
                done
        else
                echo Użycie skryptu: $0 liczba_całkowita
        fi
fi
