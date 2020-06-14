#!/bin/sh
TIME=$(calcurse --appointment -d 3 | sed -n 2p | sed 's/\ \-\ //g' | sed 's/\ ->\ [0-9]*:[0-9]*//g')
APPT=$(calcurse --appointment -d 3 | sed -n 3p)
DATE=$(calcurse --appointment -d 3 | sed -n 1p | sed 's/://g')

# echo "Next Appt: $APPT at $TIME on $DATE" | xargs
echo "Next Appt: $APPT - $TIME, $DATE" | xargs
sleep 10
