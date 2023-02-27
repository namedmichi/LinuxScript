#!/bin/bash -e

X=
Y=

echo -n "Bitte gib eine Zahl ein: "
read X


echo -n "Bitte gib eine 2. Zahl ein: "
read Y

if  [ -z $X ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi
N=$(( $X * $Y ))
echo "$N"

exit 0