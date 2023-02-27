#!/bin/bash -e
O=

echo -n "Programmoption eingeben: (von 1-3) "
read O

if [[ -z $O ]]; then
    echo "Fehlerhafte eingabe"
    exit 1
fi



case $O in
    1) echo "Option 1 ausgewählt";;
    2) echo "Option 2 ausgewählt";;
    3) echo "Option 3 ausgewählt";;
    *) echo "Nichts vernünftiges angegeben";;
esac     

exit 0
    