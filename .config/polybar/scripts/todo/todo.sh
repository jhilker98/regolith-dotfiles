#!/bin/sh 

TODO="To Do: " 

td=$(calcurse -t 1 | sed 's/[0-9\.]\ *//g' | sed -n 2p)

echo "$TODO$td"
