#!/bin/bash -e



n=
echo -n "Gebe eine zahl in"
read n
if [[ -z $n ]]; then

    echo "Fehler!"
    exit 1
fi

if [[ $(($n%4)) = 0 ]]; then
    if [[ $(($n%100)) = 0 ]]; then
        if [[ $(($n%400)) = 0 ]]; then
            echo "Schaltjahr"
            exit 0
        else
            echo "Keins"
            exit 0
        fi
    fi
   echo "Schaltjahr" 
fi
exit 0