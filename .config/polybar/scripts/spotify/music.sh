#!/bin/sh 
ARTIST=$(playerctl metadata artist)
TRACK=$(playerctl metadata title)
echo  "$ARTIST" - "$TRACK"
