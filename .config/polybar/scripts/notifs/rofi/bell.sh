#!/bin/sh

notifs=$(~/.config/polybar/scripts/notifs/rofi/rofication-status.py)
if [ $notifs -eq 0 ]; then
 echo ""
else
  echo ""
fi
