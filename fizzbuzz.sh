#!/bin/bash -e



n=
echo "Gebe eine zahl in"
read n
if [[ -z $n ]]; then

    echo "Fehler!"
    exit 1
fi
for i in $(seq $n); do


    if [[ $(( $i % 15 )) = 0 ]]; then
        echo "Fizzbuzz"
      
    elif [[ $(( $i % 5 )) = 0 ]]; then
       
        echo "buzz"
       
 
    elif [[ $(( $i % 3 )) = 0 ]]; then
        echo "fizz"
       
    else
    echo $i
    fi
    
done


exit 0