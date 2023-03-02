st=$(date "+%-H")
min=$(date "+%-M")
secondsepo=$(date "+%s")


x=$1
if  [ -z $x ]; then
    echo "gebe etwas Richtiges ein"
    exit 1
fi

timemin=$(( $st * 60 + $min ))
timemin=$(( $timemin + $x ))



st=$(( ($timemin / 60) % 24 ))
min=$(( $timemin % 60 ))


if [[ ${#st} -eq 1 ]]; then
    min="0"$st
fi
if [[ ${#min} -eq 1 ]]; then
    min="0"$min
fi


if [[ $st -lt 1 ]] ; then
    mins=$(( $x * 60 ))
    seconds=$(( $secondsepo + $mins ))
    minutesepoch=$(( $seconds / 60 ))
    hours=$(( (($minutesepoch / 60) % 24) + 1 ))
    minutes=$(( $minutesepoch % 60 ))
    echo "Altee uhrzeit: " $(date "+%H:%M")
    echo "Neue Uhrzeit: " $(($hours ))":"$minutes
    exit 0
fi

echo "Alte uhrzeit: " $(date "+%H:%M")
echo "Neue Uhrzeit: " $st":"$min