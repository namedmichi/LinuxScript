#!/bin/bash -e

X=
Y=



X=$1
Y=$2
echo "Die angegebenen Zahlen sind $X und $Y"
if  [ -z $X ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi
N=$(( $X * $Y ))
echo "$N"

exit 0