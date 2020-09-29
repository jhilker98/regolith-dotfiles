#!/bin/bash 

CONKY_PID=$(ps aux | grep "[/]usr/bin/conky -q -c /home/jhilker/.config/conky/music.conf" | awk '{print $2}')

if [[ -z $CONKY_PID ]]; then
 /usr/bin/conky -q -c /home/jhilker/.config/conky/music.conf
else
  kill $CONKY_PID
fi
