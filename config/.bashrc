# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

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

# set a fancy prompt
PS1='\W/ $ '

# enable color support of ls
export CLICOLOR=1
if [[ ! "$(uname -a)" =~ "Darwin" ]]
then # we're on a linux box
  alias ls='ls --color=auto'
fi

# aliases
alias sudo='sudo -E'
alias ls='ls -la'

# vim
set -o vi
export EDITOR=vim
export RLWRAP_EDITOR=vi

# mkdir && cd
function mcd {
    if [ -d "$@" ]
    then
        cd $@
    else
        mkdir -p $@ && cd $@
    fi
}

# file navigation with back
function peekd {
    list=($(dirs)) && echo ${list[1]}
}

# add ~/scripts to the path
if [ -e ~/scripts ]
then
  export PATH=~/scripts:$PATH
fi

# palantir
source /usr/local/dev-env/bin/profile
export GOPATH=~/go/
export PATH=$PATH:$GOPATH/bin

# added by Miniconda3 4.1.11 installer
export PATH="/Users/pmaag/miniconda3/bin:$PATH"

# do this last, so stuff in the current directory
# overrides everything else.
#
# add . to the path
export PATH=.:$PATH

