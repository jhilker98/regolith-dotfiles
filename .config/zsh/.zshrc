xdg-settings set default-web-browser firefox.desktop
neofetch
# pfetch
wal -Rq
source ~/.cache/wal/colors.sh
export color0_alpha="#D9${color0/'#'}"
export BGCOLOR="#8C${color0/'#'}"
#source ~/.profile
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jhilker/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="robbyrussell"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
export FZF_BASE="/home/jhilker/.fzf/bin/fzf"
export DISABLE_FZF_AUTO_COMPLETION="false"
export DISABLE_FZF_KEY_BINDINGS="false"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions rand-quote fzf)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR=vim
export TERM=xterm-kitty
# export TERM=xterm-256color
export MAIL=/home/jhilker/Mail
export EMAIL="jacob.hilker2@gmail.com"
export NAME="Jacob Hilker"
export PATH="/home/jhilker/.bin:/usr/local/texlive/2019/bin/x86_64-linux:$PATH"
export OWM_API_KEY="3d1a3c45d2bd2c27f5ee8f15dc54b31d"
export MYVIMRC="/home/jhilker/.config/vim/vimrc"
alias ls="exa --color=auto"
alias la="exa -la"
alias ll="exa -lah"
# export MANPATH="/usr/local/man:$MANPATH"
# export BROWSER="/usr/bin/firefox"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias home="cd /home/jhilker"
alias rm="rm -rfi"
alias Linux="cd ~/LinuxConfig; exa -alh"
alias dynworld="cd /home/jhilker/Documents/RPGs/dynasticworld; emacs dynastic-world.org"
alias mkdir="mkdir -p"
alias cp="cp -r"
alias cl='[ $[$RANDOM % 100] = 0 ] && timeout 6 cbeams -o; clear || clear'
# alias clear='[ $[$RANDOM % 10] = 0 ] && timeout 6 cbeams -o; clear || clear'
#alias cl="clear"
#alias rm="rm -rfi"
alias lsr="exa -alhrs modified"
alias clock="clear; echo -e 'It is $(date +%I:%M) $(date +%p) on $(date +%a), $(date '+%e %b').'"
alias font="fc-cache -f -v"
alias mutt="mbsync -a && neomutt; ref"
alias proc="ytop -m"
alias ref="source ~/.zshrc"
alias wx="curl 'wttr.in?format=3'"
#alias neomutt="neomutt; cl; ref"
#alias newsboat="newsboat; cl; ref"
alias news="newsboat -r; ref"
#alias wxm="curl wttr.in?format=3"
alias update="sudo apt update -y"
alias upgrade="sudo apt update && sudo apt upgrade -y"
#alias install="sudo apt install -y"
alias autoremove="sudo apt autoremove -y"
alias purge="sudo apt purge -y"
alias fix="sudo dpkg --configure -a"
alias music="tizonia --spotify-playlist-id https://open.spotify.com/playlist/69uvLQBtqvAMoyNFPy7ErL -s --spotify-allow-explicit-tracks"
alias code="tizonia --spotify-playlist-id https://open.spotify.com/playlist/0sSrQJpH4B00xG7bPDrJXp -s --spotify-allow-explicit-tracks"
alias erb="tizonia --spotify-playlist-id https://open.spotify.com/playlist/0tpXl15JsHSKrHx4TgSbOy -s --spotify-allow-explicit-tracks"
alias geb="tizonia --spotify-playlist-id 'https://open.spotify.com/playlist/3iSNMhp2CnftVz43VA5lwP' -s"
alias iks="tizonia --spotify-album 'In Keeping Secrets of Silent Earth 3' --spotify-allow-explicit-tracks"
alias ga4="tizonia --spotify-album-id 'https://open.spotify.com/album/4nYsnQpTAQaPzrPc6rOsBN' --spotify-allow-explicit-tracks"
alias nwft="tizonia --spotify-album 'No World For Tomorrow' --spotify-allow-explicit-tracks"
alias study="tizonia --spotify-playlist-id 'https://open.spotify.com/playlist/37i9dQZF1DX8Uebhn9wzrS' -s --spotify-allow-explicit-tracks"
alias lmus="tizonia -rs ~/Music"
alias shp="tizonia --spotify-album-id 'https://open.spotify.com/album/7hgb44Kiav8NRoa26nuus5' --spotify-allow-explicit-tracks"
alias coheed="tizonia --spotify-artist coheed --spotify-allow-explicit-tracks -s"
alias inquiryum="tizonia --youtube-audio-playlist 'https://www.youtube.com/playlist?list=PLuZfoSIficQvPRuNhFHPcFpYsWy9Wb3iQ'"
#alias swing="tizonia --youtube-audio-channel-uploads 'https://www.youtube.com/channel/UCqeHbI0rfexnHhhEgrg8Exg' -s"
alias swing='tizonia --youtube-audio-playlist "https://www.youtube.com/playlist?list=PLVKACZpRqh76r-zJLvIvojhg4pudPnJcV" -s'
alias jazz=" tizonia --youtube-audio-playlist 'https://www.youtube.com/playlist?list=PLc2FAW0Ie_V7q2mtrV-0xGDe3-G8d9YyP' -s"
# Navigation Aliases
alias desktop="cd ~/Desktop"
alias documents="cd ~/Documents"
alias dropbox="cd ~/Dropbox"
alias pictures="cd ~/Pictures"
alias download="cd ~/Downloads"
alias tunes="cd ~/Music"
alias conf="cd ~/.config"
alias cache="cd ~/.cache"
alias dots="cd ~/Documents/dotfiles"
alias asgn="cd ~/Documents/assignments; exa -alhrs modified"

alias cs350="cd ~/Documents/assignments/cpsc350" 
# Programming Aliases
alias jdcomp=" sudo javadoc -d directory (/var/www/html) -private *.java"
alias push="git push"
alias pull="git pull"
alias commit="git add *; git commit -a"
alias commitm="git add *; git commit -am"
alias clone="git clone"
alias vim="vim -u ~/.config/vim/vimrc"
#alias python="python3.8"
#writing, worldbuilding, and rpg aliases
alias Ashes="cd ~/Documents/Ashes-World; exa -alh"
##alias AshesWrite="cd ~/Ashes-World/writing; exa -alh"
##alias AshesCampaign="cd ~/Ashes-World/campaigns; exa -alh"
alias Aurea="cd ~/DOcumentsAurea-World; exa -alh"
##alias AureaCampaign="cd ~/Aurea-World/campaigns; exa -alh"
##alias AureaLore="emacs ~/Aurea-World/lore/lore.org"
alias Kidal="cd ~/Documents/Kidal; exa -alh"
##alias KidalLore="emacs ~/Kidal/lore/lore.org"
##alias hunt="emacs ~/Ashes-World/campaigns/the-great-hunt/greatHunt.org"
##alias campaign="cd ~/solo-campaigns; exa -alh"

# Game Aliases
alias els="rlwrap telnet elessar.mudhosting.net 7778"
alias sol="rlwrap telnet Middle-earth.us 4500"
#
# # Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jhilker/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


set -o vi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#PROMPT="%F{4}%n%f @ %F{3}%~%f $%b "
#PROMPT="%F{3}%~%f $%b "

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
