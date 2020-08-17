#!/bin/sh

#echo "Hello World"

aptformat="  - %S -> %E: %m\n"

#apt=$(calcurse -r10 --format-recur-apt="$aptformat")
apt=$(calcurse -r10 --format-recur-apt=' - %S -> %E: %m\n' | grep ': \w.*$' | sed 's/^.*: //g' | xargs)

#notify-send "Appointment" "$apt" -a "calcurse"
echo $apt
