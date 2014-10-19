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

# add ~/local_scripts to path
if [ -e ~/local_scripts ]
then
	export PATH=~/local_scripts:$PATH
fi

# add git to path
export PATH=$PATH:/usr/local/git/bin

# add ruby gem bin to path
export PATH=$PATH:/usr/local/opt/ruby/bin

# add npm executables to the path
export PATH=$PATH:/usr/local/share/npm/bin

# Java classpath
export CLASSPATH=.:/usr/share/java/*

# node no readline
export NODE_NO_READLINE=1

# import hufman aliases
if [ -e ~/.hufman-aliases ]
then
    . ~/.hufman-aliases
fi

if [ -e ~/scripts/resources/cdup.sh ]
then
    alias cdup='. ~/scripts/resources/cdup.sh'
fi

if [ -d ~/.rbenv ]
then
  export PATH=~/.rbenv/bin:$PATH
  eval "$(rbenv init -)"
fi

if [ -e ~/.bashrc.local ]
then
  . ~/.bashrc.local
fi

# do this last, so stuff in the current directory
# overrides everything else.
#
# add . to the path
export PATH=.:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

set_to_java_7 () {
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
    echo "JAVA_HOME set to $JAVA_HOME"
}
