#!/bin/sh 
#curl -sL 'https://wttr.in/?format=%t%20%C' ## for the current temp and condition
# curl -sL 'https://wttr.in?format=1' ## for the weather symbol and the current temp
# curl -sL 'https://wttr.in/?format=%t' ## for just the current temp
curl -sL 'http://wttr.in/?format=%t+(%f)' | sed 's/+//g' ## for current temp and feels like 

# curl -sL 'https://wttr.in/?format=%t%20%C' ## for the current temp in Celsius and condition
# curl -sL 'https://wttr.in?format=1' ## for the weather symbol and the current temp in Celsius
# curl -sL 'https://wttr.in/?format=%t' ## for just the current temp in Celsius

# curl -sL 'http://wttr.in/?format=%t+(%f)' | sed 's/+//g' ## for current temp and feels like, in Celsius
