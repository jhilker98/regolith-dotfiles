#Aliases
## General Aliases
alias home="cd /home/jhilker"
alias rm="rm -rfi"
alias Linux="cd ~/LinuxConfig; ls -alh"
alias dynworld="cd /home/jhilker/Documents/RPGs/dynasticworld; emacs dynastic-world.org"
alias mkdir="mkdir -p"
alias cp="cp -r"
alias cl='[ $[$RANDOM % 100] = 0 ] && timeout 6 cbeams -o; clear || clear'
# alias clear='[ $[$RANDOM % 10] = 0 ] && timeout 6 cbeams -o; clear || clear'

#alias cl="clear"
#alias rm="rm -rfi"
alias clock="clear; echo -e 'It is $(date +%I:%M) $(date +%p) on $(date +%a), $(date '+%e %b').'"
alias font="fc-cache -f -v"
alias mutt="mbsync -a && neomutt; ref"
alias proc="ytop -m"
alias ref="source ~/.bashrc"
alias wx="curl wttr.in?format=3"
#alias neomutt="neomutt; cl; ref"
#alias newsboat="newsboat; cl; ref"
alias news="newsboat -r; ref"
#alias wxm="curl wttr.in?format=3"
## Updating Aliases
alias update="sudo apt update -y"
alias upgrade="sudo apt update && sudo apt upgrade -y"
alias install="sudo apt install -y"
alias autoremove="sudo apt autoremove -y"
alias purge="sudo apt purge -y"
alias fix="sudo dpkg --configure -a"
## Music
alias music="tizonia --spotify-playlist-id https://open.spotify.com/playlist/69uvLQBtqvAMoyNFPy7ErL -s --spotify-allow-explicit-tracks"

alias code="tizonia --spotify-playlist-id https://open.spotify.com/playlist/0sSrQJpH4B00xG7bPDrJXp?si=Oegt3L11R9mabcKDh2jNDQ -s --spotify-allow-explicit-tracks"
alias erb="tizonia --spotify-playlist-id https://open.spotify.com/playlist/0tpXl15JsHSKrHx4TgSbOy?si=3PYrD5EkSxOT4B6PcbUxNQ -s --spotify-allow-explicit-tracks" 
alias geb="tizonia --spotify-playlist-id https://open.spotify.com/playlist/3iSNMhp2CnftVz43VA5lwP?si=UHrfcD8gR0KXqkqonzBpgg -s"
alias iks="tizonia --spotify-album 'In Keeping Secrets of Silent Earth 3' --spotify-allow-explicit-tracks"
alias ga4="tizonia --spotify-album-id https://open.spotify.com/album/4nYsnQpTAQaPzrPc6rOsBN --spotify-allow-explicit-tracks" 
alias nwft="tizonia --spotify-album 'No World For Tomorrow' --spotify-allow-explicit-tracks" 

alias study="tizonia --spotify-playlist-id https://open.spotify.com/playlist/37i9dQZF1DX8Uebhn9wzrS -s --spotify-allow-explicit-tracks"
alias lmus="tizonia -rs ~/Music"
alias shp="tizonia --spotify-album-id https://open.spotify.com/album/7hgb44Kiav8NRoa26nuus5 --spotify-allow-explicit-tracks"
alias coheed="tizonia --spotify-artist coheed --spotify-allow-explicit-tracks -s"
alias cava="cava; cl; ref"
## Navigation Aliases
alias desktop="cd ~/Desktop"
alias documents="cd ~/Documents"
alias dropbox="cd ~/Dropbox"
alias pictures="cd ~/Pictures"
alias download="cd ~/Downloads"
alias tunes="cd ~/Music"
alias conf="cd ~/.config"
alias cache="cd ~/.cache"
alias dots="cd ~/Documents/dotfiles"
alias asgn="cd ~/Documents/assignments; ls -ash"

## Programming and Git Aliases
alias jdcomp=" sudo javadoc -d directory (/var/www/html) -private *.java"
alias push="git push"
alias pull="git pull"
alias commit="git add *; git commit -a"
alias commitm="git add *; git commit -am"
alias clone="git clone"

# alias vim="vim -u ~/.config/vim/vimrc"

#alias python="python3.8"
#writing, worldbuilding, and rpg aliases
##alias Ashes="cd ~/Ashes-World; ls -alh"
##alias AshesWrite="cd ~/Ashes-World/writing; ls -alh"
##alias AshesCampaign="cd ~/Ashes-World/campaigns; ls -alh"
##alias Aurea="cd ~/Aurea-World; ls -alh"
##alias AureaCampaign="cd ~/Aurea-World/campaigns; ls -alh"
##alias AureaLore="emacs ~/Aurea-World/lore/lore.org"
##alias Kidal="cd ~/Kidal; ls -alh"
##alias KidalLore="emacs ~/Kidal/lore/lore.org"
##alias hunt="emacs ~/Ashes-World/campaigns/the-great-hunt/greatHunt.org"
##alias campaign="cd ~/solo-campaigns; ls -alh"


