#!/bin/bash
x=
echo -n "geben sie eine jahreszahl ein"
read x

if [[ -z $x ]]; then
    echo "keine zahl eingegeben"
    exit 0
fi

if [[ $(( $x % 4 )) = 0 ]]; then
    if [[ $(( $x % 100 )) = 0 ]]; then
        if [[ $(( $x % 400 )) = 0 ]]; then
            echo "Schaltjahr"
            exit 0
        fi
        echo "kein schaltjahr"
        exit 0
    fi
    echo "Schaltjahr"
    exit 0
fi
echo "kein schaltjarh"
exit 0