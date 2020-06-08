#!/bin/sh 

LEN=$(calcurse --todo | wc -l)

if [ $LEN -lt 1 ]; then
  echo 'Nothing to do today!'
else
  #TL=$(( $LEN - 1 ))
  #calcurse -t 1 | tail -n $TL 
  calcurse -t 1 | tail -n $(( $LEN - 1 ))
fi
sleep 10
