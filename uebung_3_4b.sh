#!/bin/bash -e

n=
read -p "Gebe eine zahl ein: " n 
i=1
erg=

if  [ -z $n ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi

until [ $i -gt $n ]; do
    
    erg=$(( $erg + $i))
    echo "i=$i; ergebniss=$erg"
    let "i++"
    
done 

echo "Die zahlen von 1 bis $n ergeben $ergebiss"