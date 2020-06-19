#!/bin/sh 
#ARTIST=$(playerctl metadata artist)
#TITLE=$(playerctl metadata title)
TRACK="$(playerctl metadata artist) - $(playerctl metadata title)"
zscroll -l 20 \
        --delay 0.3 \
        --match-command "playerctl status ncspot" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/jhilker/.config/polybar/scripts/spotify/get_spotify_status.sh' 
        # --update-check true 'playerctl metadata artist' &
       #  --update-check true 'playerctl metadata title' &
wait

