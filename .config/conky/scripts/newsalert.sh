#!/usr/bin/env bash
 
NEWS=$(newsboat -x reload print-unread)

#notify-send "New Articles" "$NEWS"
echo "You have $NEWS."
