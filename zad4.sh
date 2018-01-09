#!/bin/bash
if [ $# -ne 1 ]; then
        echo Użycie skryptu: $0 nazwa_pliku
else
        cat $1
fi
