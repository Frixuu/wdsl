#!/bin/bash
while [ true ]
do
        read -p "Podaj katalog: " katalog
        if [ -z "$katalog" ]
        then
                break
        fi
        if [ ! -d $katalog ]
        then
                echo Katalog $katalog nie istnieje.
        else
                ls "$katalog"
        fi
done
