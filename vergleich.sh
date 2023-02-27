#!/bin/bash -e

X=$1
Y=$2

read X
read Y

if  [ -z $X ] || [ -z $Y ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi


if [ $X -gt $Y ]; then
    echo "$X ist größer als $Y"
elif [ $Y -lt $X ]; then
    echo "$X ist kleiner als $Y"
else
    echo "sind gleich"
fi