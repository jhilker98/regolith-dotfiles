#!/bin/bash
if [[ $($HOME/anaconda3/bin/gcalcli --conky agenda --military --nostarted | sed -n 2p) != "No Events Found..."  ]]; then
  $HOME/anaconda3/bin/gcalcli --conky agenda --military --nostarted | sed "s/{color yellow}/{color3}/g" | sed "s/\([0-9]\+:[0-9]\+\)/\${color7}\1\${color}/g" | sed -n 1,8p
  echo -e -n '\n'
else
#  $HOME/anaconda3/bin/gcalcli --conky agenda | sed "s/{color yellow}/{color8}/g"
echo -e "\nNo events coming up.\n\n"
fi



