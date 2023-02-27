#!/bin/bash -e

n=
read -p "Gebe eine zahl ein: " n 
i=1
erg=

if  [ -z $n ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi

while [ $i -le $n ]; do
    
    erg=$(( $erg + $i))
    echo "i=$i; ergebniss=$erg"
    i=$(( 1 + $i))
    
done 

echo "Die zahlen von 1 bis $n ergeben $ergebiss"