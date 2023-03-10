#!/bin/bash

icon_file=$1

outfile=$2
ending=$3


iside=$4

ofx=$5
ofy=$6

stx=$7
sty=$8


width=$(identify -format "%w" $1)
height=$(identify -format "%h" $1)

px=$stx
py=$sty

i=0
j=0

sum=0

while [[ $(( $py + $iside + $ofy )) -le $height ]]; do
    while [[  $(( $px + $iside + $ofx )) -le $width  ]]; do
        convert $icon_file -crop ${iside}x${iside}\+${px}\+${py} "${outfile}${i}${j}${ending}"
        px=$(( $px + $iside +$ofx ))
        i=$(( $i+1 ))
        sum=$(( $sum +1 ))
    done
    px=$stx
    j=$(( $j + 1 ))
    i=0
    py=$(( $py + $iside ))
done

echo "§sum items ausgeschnitten"