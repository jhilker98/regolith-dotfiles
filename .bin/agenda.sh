#!/bin/bash

#echo "Hello World"
time=$(calcurse -r9 --format-recur-apt=' - %S -> %E: %m\n' | grep -o '\([0-9][0-9]:[0-9][0-9]\)' | sed "s/\([0-9][0-9]:[0-9][0-9] \)/\1\n/g" | head -n1)
#echo $time | sed "s/ /\n/g" | head -n1
aptformat="  - %S -> %E: %m\n"

#apt=$(calcurse -r9 --format-recur-apt="$aptformat")
apt=$(calcurse -r9 --format-recur-apt="$aptformat" | grep ': \w.*$' | sed 's/^.*: //g' | xargs)
time=`echo $time | sed "s/ /\n/g"`
echo $time
#notify-send "Appointment" "$apt" -a "calcurse"
