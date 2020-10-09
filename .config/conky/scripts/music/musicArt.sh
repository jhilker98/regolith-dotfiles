#!/bin/sh

coverPath=$HOME/.config/conky/scripts/music
coverName=cover.jpeg
url=$(playerctl metadata mpris:artUrl | sed "s/open\.spotify\.com/i.scdn.co/")
curl $url -o $coverPath/$coverName


