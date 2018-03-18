#!/bin/bash
if [ $# -ne 1 ]; then
        echo Użycie skryptu: $0 liczba_całkowita 
else
        if [ $1 -eq 0 ] 2>/dev/null; then
                echo Podana liczba jest zerem.
        elif [ $1 -gt 0 ] 2>/dev/null; then
                echo Podana liczba jest dodatnia.
        elif [ $1 -lt 0 ] 2>/dev/null; then
                echo Podana liczba jest ujemna.
        else
                echo Nie podano liczby całkowitej w parametrze.
                exit 1
        fi
fi
