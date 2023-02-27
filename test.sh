#!/bin/bash -e

N=

echo -n "Bitte zahl eingaben"
read N

if [ -z $N ]; then

    echo "Fehler!"
    exit 1
else
    echo "Die eingegebene Zahl ist: $N"
fi
if [ $N -gt 23 ]; then
    echo "$N ist ganz schön groß"
fi