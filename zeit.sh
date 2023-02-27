echo $(date "+%H:%M:%S")

st=$(date "+%H")
min=$(date "+%M")

x=$1
if  [ -z $x ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi
str=$((x/60))
minr=$((x%60))

echo "Die zeit ist $((st+str)):$((min+minr))"