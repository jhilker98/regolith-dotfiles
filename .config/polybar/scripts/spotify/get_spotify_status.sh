#!/bin/bash 
 if [ "$(playerctl --player=ncspot)" = "Stopped" ]; then
    echo "No music is playing"
elif [ "$(playerctl --player=ncspot)" = "Paused"  ]; then
    polybar-msg -p "$(pgrep -f "polybar btm")" hook playerctl-play-pause 2 >/dev/null
    playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
else # Can be configured to output differently when player is paused
    polybar-msg -p "$(pgrep -f "polybar btm")" hook playerctl-play-pause 1 > /dev/null
    playerctl metadata ncspot --format "{{ artist }} - {{ title }}"
fi
