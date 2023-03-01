#!/bin/bash -e

a=
b=
c=
read -p "Geben sie Seite a ein: " a
if  [ -z $a ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi

read -p "Geben sie Seite b ein: " b
if  [ -z $b ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi

read -p "Geben sie Seite c ein: " c
if  [ -z $c ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi

if [[ $(($a + $b)) -ge $c ]] && [[ $(($c + $b)) -ge $a ]] && [[ $(($a + $c)) -ge $b ]];then
    echo ""
else
    echo "Dreieck ist nicht möglich"
    exit 1
fi


if [ $a -eq $b ] && [ $a -eq $c ]; then
    echo "Gleichseitig"
elif [  $a -eq $b ] || [  $c -eq $b ] || [  $a -eq $c ]; then
    echo "Gleichschenklig"
else
    echo "Andersweitig"
fi

