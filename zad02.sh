#!/bin/bash
clear
read -p "Podaj swoje imię: " imie
if [ $imie = Janek ]
then
        echo Nie znam Janka
else
        echo Witaj $imie!
fi
