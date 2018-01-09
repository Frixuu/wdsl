#!/bin/bash
if [ $# -ne 2 ]
then
        echo Użycie skryptu: $0 katalog1 katalog2
else
        if [ ! -d $1 ]; then echo $1 nie jest nazwą katalogu.; exit 1; fi
        if [ ! -d $2 ]; then echo $2 nie jest nazwą katalogu.; exit 1; fi
        for i in "$1"/*
        do
                nazwa=$(basename $i)
                for j in "$2"/*
                do
                        if [ $nazwa = $(basename $j) ]
                        then
                                echo $nazwa
                                break
                        fi
                done
        done
fi
