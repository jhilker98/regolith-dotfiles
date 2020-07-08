#!/bin/bash
if [[ $($HOME/anaconda3/bin/gcalcli --conky agenda --military --nostarted | sed -n 2p) != "No Events Found..."  ]]; then
  # SHow 8 lines of data and then print an empty line
  $HOME/anaconda3/bin/gcalcli --conky agenda --military --nostarted| sed "s/\([0-9]\+:[0-9]\+\)\s*\(.*\)/\1  \2/g" | sed 's/\(\w\w\w\) \(\w\w\w\) \([0-9][0-9]\)/${font Iosevka Nerd Font:italic:bold:size=11}\1 \3 \2${font}/g' | sed "s/{color yellow}/{color3}/g" | sed "s/\([0-9]\+:[0-9]\+\)/\${color7}\1\${color}/g" | sed -n 1,8p
  echo -e -n '\n'
else
#  $HOME/anaconda3/bin/gcalcli --conky agenda | sed "s/{color yellow}/{color8}/g"
echo -e "\nNo events coming up.\n\n"
fi



