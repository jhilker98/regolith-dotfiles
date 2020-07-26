#!/bin/sh

NEWS=$(newsboat -x reload print-unread)
NUM=$(newsboat -x reload print-unread | awk '{print $1}')
if [ $NUM = 0 ]; then
  notify-send "New Articles" "No new articles"
else
  notify-send "New Articles" "$NEWS"
fi
#echo $NEWS
