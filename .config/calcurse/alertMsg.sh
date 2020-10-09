#!/bin/sh
agenda=$(calcurse -a --format-apt='%S - %m\n' --format-recur-apt '%S - %m\n' | awk 'NR>1' | sed 's/^/   • /g')
agenda="$agenda\n" | sed '/^\s*$/d'
evt=$(calcurse -a --format-apt='%S - %m\n' --format-recur-apt '%S - %m\n' | sed -n 2p)
email='You have events coming up in an hour.\n'
email="$email$agenda"
notify-send "Event Soon" "$evt" -a "calcurse" -u critical;
for sound in $(seq 1); 
  do $(aplay -q ~/Music/alerts/alert.wav) ; 
done
echo "$email" | neomutt -s "Event Soon" $EMAIL

