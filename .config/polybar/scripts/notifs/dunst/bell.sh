#!/bin/sh

notifs=$(dunstctl count | sed -n 3p | xargs | cut -d' ' -f2)

if [ $notifs -eq 0 ]; then
 echo ""
else
  echo ""
fi
