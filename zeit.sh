st=$(date "+%H")
st=${st:1:1}
min=$(date "+%M")

x=$1
if  [ -z $x ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi

timemin=$(( $st * 60 + $min ))
timemin=$(( $timemin + $x ))

st=$(( $timemin / 60 ))
minutes=$(( $timemin % 60 ))



echo "Alte uhrzeit: " $(date "+%H:%M:%S")
echo "Neue Uhrzeit: " $st ":" $minutes