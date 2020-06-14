#!/bin/sh 

NEWS=$(newsboat -x print-unread | sed -n 2p)
echo " News: $NEWS" | zscroll -l 20
