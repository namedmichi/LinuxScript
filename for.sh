#!/bin/bash -e

for i in a b c; do
    echo "for schleif:Durchlauf nummer $i"
done
for i in {1..1000000}; do
    echo "Zweite schleife nummer $i"
done