#!/bin/bash -e

zahl1=
echo -n "Gebe sie 1. zahl ein: "
read zahl1
if [[ -z $zahl1 ]]; then

    echo "Bitte eingabe beachten!"
    exit 1
fi
zahl2=
echo -n "Gebe sie 2. zahl ein: "
read zahl2
if [[ -z $zahl2 ]]; then

    echo "Bitte eingabe beachten!"
    exit 1
fi

op=
echo -n "Gebe sie einen Operator ein(a/s/d/m): "
read op
if [[ -z $op ]]; then

    echo "Bitte eingabe beachten!"
    exit 1
fi
case $op in
    a)
        erg=$(($zahl1+$zahl2))
    ;;
    s)
        erg=$(($zahl1-$zahl2))
    ;;
    d)
        erg=$(($zahl1/$zahl2))
    ;;
    m)
        erg=$(($zahl1*$zahl2))
    ;;
    *)
        echo "geben sei einen richtigen Operator ein"
        ;;
esac   

echo "Das ergbniss ist: $erg"
exit 0