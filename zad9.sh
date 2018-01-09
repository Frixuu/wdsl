#!/bin/bash
suma=0
ilosc=0
while [ true ]
do
        read -p "Podaj liczbę: " liczba
        if [ "$liczba" -eq "$liczba" ] 2>/dev/null; then
                if [ $liczba -eq 0 ]
                then
                        echo Suma $ilosc liczb: $suma
                        break
                else
                        suma=$(($suma + $liczba))
                        let ilosc++
                fi
        fi
done
