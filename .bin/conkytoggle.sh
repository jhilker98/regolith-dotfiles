#!/bin/bash 

CONKY_PID=$(ps aux | grep "[/]usr/bin/conky -q" | awk '{print $2}')

if [ -z "$CONKY_PID" ]
then
    /usr/bin/conky -q 
else
    kill $CONKY_PID
fi
