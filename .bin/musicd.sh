#!/bin/bash
# Get the song that is currently played and store it to a variable
song="$(playerctl metadata title) - $(playerctl metadata artist)"
# Stays on loop while the script is active
while "true"; do
	# Check if the current song is equal to the one that was playing before (song)
  if [[ "$(playerctl metadata title) - $(playerctl metadata artist)" != "$song" ]] && [[ "$(playerctl metadata title) - $(playerctl metadata artist)" != "No players found - No players found" ]]; then
		# If not equal, assign the new song to the variable to be checking again correctly
    song="$(playerctl metadata title) - $(playerctl metadata artist)"
		# And send the notification
		notify-send "Current Song" "$song"
	# Change "1" to any value in seconds you want
	sleep 1
done
