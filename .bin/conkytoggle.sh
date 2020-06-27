#!/bin/bash 

if [[ $# -lt 1 ]]; then
  echo "No config given!"
  exit 1
elif [[ $1 = "--todo" ]] || [[ $1 = "-t" ]]; then
  # echo "Todo given"
  TODO_PID=$(ps aux | grep "[/]usr/bin/conky -q -c /home/jhilker/.config/conky/todo.conf" | awk '{print $2}')

  if [ -z "$TODO_PID" ]
  then
    /usr/bin/conky -q -c /home/jhilker/.config/conky/todo.conf &
  else
    kill $TODO_PID
  fi
elif [[ $1 = "--weather" ]] || [[ $1 = "-w" ]]; then
WX_PID=$(ps aux | grep "[/]usr/bin/conky -q -c /home/jhilker/.config/conky/weather.conf" | awk '{print $2}')

  if [ -z "$WX_PID" ]
  then
    /usr/bin/conky -q -c /home/jhilker/.config/conky/weather.conf &
  else
    kill $WX_PID
  fi

fi


