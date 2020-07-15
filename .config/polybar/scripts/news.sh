#!/bin/bash 

NEWS="News $(newsboat -x print-unread | sed -n 2p)"
echo $NEWS | zscroll -l 20
