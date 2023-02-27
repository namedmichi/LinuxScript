#!/bin/bash -e

a=
echo -n "Gebe sie Seite a ein: "
read a
if [[ -z $a ]]; then

    echo "Bitte eingabe beachten!"
    exit 1
fi
b=
echo -n "Gebe sie Seite b ein: "
read b
if [[ -z $b ]]; then

    echo "Bitte eingabe beachten!"
    exit 1
fi

erg=$((a*b))
echo "Das ergebniss ist $erg"
exit 0