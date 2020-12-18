#!/bin/bash
ext="${1##*.}"
mpvFiles="mkv mp4 avi mov wmv flv gif mp3"
fehFiles="png jpg jpeg jpe"
wgetFiles="flac opus mp3?source=feed pdf"

if echo $fehFiles | grep -w $ext > /dev/null; then
	nohup swallow gpicview "$1" >/dev/null &
elif echo $mpvFiles | grep -w $ext > /dev/null; then
	nohup alacritty -e swallow mpv --loop --quiet --force-window='immediate' "$1" > /dev/null &
elif echo $wgetFiles | grep -w $ext > /dev/null; then
	nohup wget "$1" >/dev/null &
elif echo $1 | grep youtube > /dev/null; then
	nohup swallow mpv "$1" > /dev/null &
elif echo $1 | grep youtu.be > /dev/null; then
	nohup swallow mpv "$1" > /dev/null &
elif echo $1 | grep vimeo > /dev/null; then
	nohup swallow mpv "$1" > /dev/null &
else
	nohup firefox "$1" >/dev/null &
fi

