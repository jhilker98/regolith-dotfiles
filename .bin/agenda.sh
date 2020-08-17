#!/bin/bash

#echo "Hello World"
time=$(calcurse -r9 --format-recur-apt=' - %S -> %E: %m\n' | grep -o '\([0-9][0-9]:[0-9][0-9]\)' | sed "s/\([0-9][0-9]:[0-9][0-9] \)/\1\n/g" | head -n1)
day=$(calcurse -r9 --format-recur-apt=' - %S -> %E: %m\n' | sed "s/://g" | sed -n 1p) 
#echo $time | sed "s/ /\n/g" | head -n1
aptformat="  - %S -> %E: %m\n"

#apt=$(calcurse -r9 --format-recur-apt="$aptformat")
apt=$(calcurse -r9 --format-recur-apt="$aptformat" | grep ': \w.*$' | sed 's/^.*: //g' | xargs)
time=`echo $time | sed "s/ /\n/g"`
echo $day
#notify-send "Appointment" "$apt" -a "calcurse"
