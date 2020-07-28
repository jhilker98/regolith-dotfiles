#!/bin/sh

NEWS=$(newsboat -x reload print-unread)
NUM=$(newsboat -x reload print-unread | awk '{print $1}')

## Don't send if no new articles
if [ $NUM != 0 ] && [ $NUM != 1 ]; then
  notify-send "New Articles" "$NEWS"
elif [ $NUM = 1 ]; then
  notify-send "New Articles" "$NUM unread article"
fi

## Send "No new articles" if no new articles
#if [ $NUM = 0 ]; then
#  notify-send "New Articles" "No new articles"
#else
#  notify-send "New Articles" "$NEWS"
#fi

