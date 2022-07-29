#!/bin/bash

# Usage:
# ./timer.sh hours:minutes:seconds

now="$(date +"%T")"
goal="$1"

while :
do
    echo -ne "$now\033[0K\r"
    now=$(date +"%T")
    if [ $now = $goal ]; then
        echo -ne "Done!\033[0K\r"
        paplay /usr/share/sounds/freedesktop/stereo/complete.oga
        break
    else
        sleep 1
    fi
done
