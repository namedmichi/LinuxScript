#!/bin/bash

for x in $( seq 1 100 )
do
    if [[ $(( $x % 15 )) = 0 ]]; then
        echo "fizzbuzz"
        continue
    fi
    if [[ $(( [$x % 5] && [$x % 3] )) = 0 ]]; then
        echo "buzz"
        continue
    fi
    if [[ $(( $x % 3 )) = 0 ]]; then
        echo "fizz"
        continue
    fi
    echo $x
done
