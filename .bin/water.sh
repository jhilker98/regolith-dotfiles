#!/bin/sh

notify-send -a "waterbot" "Drink Water" "Drink some water." -u "critical" &&
  for sound in $(seq 1); do 
   $(aplay -q ~/Music/alerts/alert.wav);
 done
