xdg-settings set default-web-browser firefox.desktop
bat cache --build>/dev/null
#feh --bg-fill /home/jhilker/Pictures/Wallpapers/scheme-based/gruvbox/dark/pacman.png
#neofetch
#echo -e '\n'
autoload -U colors && colors
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
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"
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
 #ENABLE_CORRECTION="true"

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
plugins=(git fast-syntax-highlighting zsh-autosuggestions rand-quote fzf vi-mode)

source $ZSH/oh-my-zsh.sh
# User configuration
export EDITOR=vim
#export TERM=xterm-kitty
export TERM=xterm-256color
export MAIL=/home/jhilker/Mail
export EMAIL="jacob.hilker2@gmail.com"
export NAME="Jacob Hilker"
export PATH="/usr/local/texlive/2019/bin/x86_64-linux:/home/jhilker/.bin:/home/jhilker/Downloads/nvim/bin/:$PATH"
export COWPATH='/usr/sharecowsay/cows/:/home/jhilker/.cows/'
# Tuir editor
export RTV_EDITOR="nvim"
# export MANPATH="/usr/localman:$MNPATH"
# export BROWSER="/usr/bin/firefox"
export MANPAGER="less -isg"
export REFERBIB="/home/jhilker/Dropbox/bibliography/bibrefer.ref"
export TEXBIB="/home/jhilker/Dropbox/bibliography/biblatex.bib"
export FZF_DEFAULT_OPTS='--height=30% --layout=reverse'
#export PAGER="less -r"
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# # Start blinking
 export LESS_TERMCAP_mb=$(tput bold; tput setaf 12) # blue
# # Start bold
 export LESS_TERMCAP_md=$(tput bold; tput setaf 12) # blue
# # Start stand out
 export LESS_TERMCAP_so=$(tput bold; tput rev; tput setaf 5) # magenta
# # End standout
 export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# # Start underline
 export LESS_TERMCAP_us=$(tput smul; tput sitm; tput setaf 1) # red
# # End Underline
 export LESS_TERMCAP_ue=$(tput sgr0)
# # End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)
export FZF_MARKS_FILE="/home/$USER/.fzf-marks"

export NOTES="$HOME/Dropbox/notes/fall2020/notes.org"
export AGENDA="$HOME/Dropbox/org/agenda.org"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
#export PF_ASCII="arch"
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
  source $HOME/.aliases
  alias ref="source ~/.zshrc"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh





vim_ins_mode="%{$fg[red]%}[%F{12}%BINS%B%{$reset_color%}%{$fg[red]%}]%{$reset_color%}"
vim_cmd_mode="%{$fg[red]%}[%{$fg[magenta]%}NML%{$fg[red]%}]%{$reset_color%}"
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
  if [ $KEYMAP = vicmd ]; then
    echo -ne '\e[1 q'
  else
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
}
zle -N zle-line-finish


#set -o vi
#bindkey -v
setopt vi
 [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.repos/forgit/forgit.plugin.zsh
#echo ""

## My PS1
#PS1='${vim_mode} %{$fg[yellow]%}%2~%{$reset_color%}%{$reset_color%} $%b ' 

## My version of Luke's Prompt
#PS1="${vim_mode} %B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{%F{12}%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey -v '^?' backward-delete-char
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char
bindkey '^I' expand-or-complete
## Spaceship Configuration
 SPACESHIP_PROMPT_ADD_NEWLINE=false
 SPACESHIP_PROMPT_SEPARATE_LINE=false
 SPACESHIP_CHAR_SYMBOL="$ "
 #SPACESHIP_CHAR_SUFFIX=" $ "
 SPACESHIP_DIR_COLOR="yellow"
 SPACESHIP_DIR_PREFIX=""
 SPACESHIP_DIR_TRUNC="2"
 SPACESHIP_DIR_TRUNC_REPO="false"
 SPACESHIP_GIT_BRANCH_COLOR="12"
 SPACESHIP_VI_MODE_NORMAL="%{$fg[red]%}[%{$fg[magenta]%}NML%{$fg[red]%}]%{$reset_color%}"
 SPACESHIP_VI_MODE_INSERT="%{$fg[red]%}[%F{12}%BINS%B%{$reset_color%}%{$fg[red]%}]%{$reset_color%}"
SPACESHIP_CHAR_COLOR_SUCCESS="15"
 SPACESHIP_PROMPT_ORDER=(
   vi_mode 
   dir
   git
   char
   )
 # Spaceship Prompt
# autoload -U promptinit; promptinit

source /home/jhilker/.repos/fzf-marks/fzf-marks.plugin.zsh
## FZF Configuration
# setopt autopushd 
# setopt pushdignoredups

## FZF Marks Configuration
FZF_MARKS_COMMAND="fzf --height 40% --reverse -n 1 -d ' : '"
FZF_MARKS_KEEP_ORDER=1
