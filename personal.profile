#!/bin/sh
# vim: set ts=3 sw=3 sts=3 et si ai: 
# 
# personal.profile 
# --------------------------------------------------------------------
# (c) 2008 MashedCode Co.
# 
# Andres Aquino <andres.aquino@gmail.com>

# input mode
set -o vi

# terminal line settings
stty erase '^?'
stty intr '^C' 
stty kill '^U' 
stty stop '^S'
stty susp '^Z'
stty werase '^W'

# about host
HOSTNAME="`hostname`"
IPLAN=`/usr/sbin/ping ${HOSTNAME} -n1 | awk '/bytes from/{gsub(":","",$4);print $4}'`
[ "$SSH_CONNECTION" != "" ] && IPLAN=`echo $SSH_CONNECTION | cut -f3 -d" "`
HOST=`hostname | tr "[:upper:]" "[:lower:]" | sed -e "s/m.*hp//g`

# command line _eye candy_
export PS1="$(echo "\033[01;33m${USER}\033[01;37m@${IPLAN}(\033[01;31m${HOST}\033[01;37m)") \${PWD##*/}$ "
export TERM="xterm"
export PROFILE="applications"

# common alias
alias ls='ls -F'
alias ll='ls -l'
alias la='ll -a'
alias lt='la -t'
alias lr='lt -r'
alias pw='pwd'
alias domains='cd ~/bea/user_projects/domains'

# man 
MANPATH=$HOME/aptrigger:$MANPATH

# binary path
PATH=$HOME/bin:/usr/local/bin:$PATH

#
