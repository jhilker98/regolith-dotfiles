# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
#Aliases
## General Aliases
alias home="cd /home/jhilker"
alias rm="rm -rfi"
alias Linux="cd ~/LinuxConfig; ls -alh"
alias dynworld="cd /home/jhilker/Documents/RPGs/dynasticworld; emacs dynastic-world.org"
alias mkdir="mkdir -p"
alias cp="cp -r"
alias cl='[ $[$RANDOM % 10] = 0 ] && timeout 6 cbeams -o; clear || clear'
# alias clear='[ $[$RANDOM % 10] = 0 ] && timeout 6 cbeams -o; clear || clear'

#alias cl="clear"
#alias rm="rm -rfi"
alias clock="clear; echo -e 'It is $(date +%I:%M) $(date +%p) on $(date +%a), $(date '+%e %b').'"
alias font="fc-cache -f -v"
alias mutt="mbsync -a && neomutt"
alias proc="ytop -m"
alias ref="source ~/.bashrc; cl"
alias wx="curl wttr.in?format=3"

alias dots="cd ~/Documents/dotfiles"
#alias wxm="curl wttr.in?format=3"
## Updating Aliases
alias update="sudo apt update"
alias upgrade="sudo apt update && sudo apt upgrade"
alias install="sudo apt install"
alias autoremove="sudo apt autoremove -y"


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
## Navigation Aliases
alias desktop="cd ~/Desktop"
alias documents="cd ~/Documents"
alias dropbox="cd ~/Dropbox"
alias pictures="cd ~/Pictures"
alias download="cd ~/Downloads"
alias tunes="cd ~/Music"
alias conf="cd ~/.config"
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


# echo "Welcome back, $USER."
# echo -e "It is $(date +%I:%M) $(date +%p) on $(date +%a), $(date '+%e %b')."
# export PS1="\033[34m\]\u\[\033[m\]@\[\033[31m\]\W\[\033[m\]:\[\033[m\] \$ "

# export PS1="\u@\W: \$ "
export EDITOR=vim
export MAIL=/home/jhilker/Mail
#use 16 for solarized, change to 256 for other themes
export TERM=xterm-256color
export EMAIL="jacob.hilker2@gmail.com"
export NAME="Jacob Hilker"
export PATH="/home/jhilker/bin:/usr/local/texlive/2019/bin/x86_64-linux:$PATH"
export OWM_API_KEY="3d1a3c45d2bd2c27f5ee8f15dc54b31d"



if [ -f ~/.dir_colors/dircolors ]
  then eval `dircolors ~/.dir_colors/dircolors`
fi
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jhilker/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jhilker/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jhilker/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jhilker/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

wal -Rq
source "$HOME/.cache/wal/colors.sh"
export color0_alpha="#CC${color0/'#'}"

set -o vi

pfetch
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
