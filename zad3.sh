#!/bin/bash
napisy=\($*\)
if [ $# -eq 0 ]; then
        koncowka=ow
        napisy=
elif [ $# -gt 4 ]; then
        koncowka=ow
elif [ $# -eq 1 ]; then
        koncowka=
else 
        koncowka=y
fi

echo Skrypt ma $# parametr$koncowka. $napisy
echo Skrypt ma nazwe pliku $0.
echo W tej chwili jest $(date).
