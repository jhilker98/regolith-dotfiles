#!/bin/bash 


TODO="To Do: " 
td=$(calcurse -t 1 | sed 's/[0-9\.]\ *//g' | sed -n 2p)


if [[ $td = "" ]]; then
  echo "Nothing to do today!"
else
  echo $TODO$td
fi
