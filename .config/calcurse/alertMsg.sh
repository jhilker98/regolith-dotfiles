#!/bin/sh

msg="You have an event coming up in an hour."
evt=$(calcurse -a --format-apt='%S - %m\n' | sed -n 2p)
email=$(printf '%b\n   • %b\n' "$msg" "$evt")

notify-send "Event Soon" "$evt" -a "calcurse" -u critical;
printf '%s\n' "$email" | neomutt -s "Event Soon" $EMAIL

