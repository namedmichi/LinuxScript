#!/bin/bash -e

n=
read -p "Gebe eine zahl ein: " n 


if  [ -z $n ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi

erg=

for (( i=0; i<${#n}; i++)); do
    erg=$(( $erg + ${n:$i:1}**${#n}))
    echo "$i; Ziffer[$i] = ${n:$i:1}; ergebnis=$erg"

done
echo $erg