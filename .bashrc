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

#set the PS1
export PS1="\[$(tput bold)\][\[\]\t \w] $ > \n\[\]\[$(tput sgr0)\]"

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
 
# some more ls aliases
alias ll='ls -l'
alias la='ls -A'

#adds alias for battery charge
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

#adds alias for adding dotfiles to a git repo
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#adds aliases for switching between themes with pywal
alias colobird='wal -i ~/Documents/UI/wallpapers/wall.png -q --backend colorz
wal_steam.py -w > /dev/null'
alias colotransistor='wal -i ~/Documents/UI/wallpapers/transistor.jpg -q --backend wal
wal_steam.py -w > /dev/null'
alias coloxeno='wal -i ~/Documents/UI/wallpapers/xenoblade.jpg -q --backend wal
wal_steam.py -w > /dev/null'
alias colopurple='wal -i ~/Documents/UI/wallpapers/purple.png -q --backend wal
wal_steam.py -w > /dev/null'
alias coloroad='wal -i ~/Documents/UI/wallpapers/road.jpg -q --backend wal
wal_steam.py -w > /dev/null'
