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

# colores
FORE=`tput smso`
UNDR=`tput smul`
NORM=`tput sgr0`

# datos del host
HOSTNAME="`hostname`"
IPLAN=`/usr/sbin/ping ${HOSTNAME} -n1 | awk '/bytes from/{gsub(":","",$4);print $4}'`
[ "$SSH_CONNECTION" != "" ] && IPLAN=`echo $SSH_CONNECTION | cut -f3 -d" "`
HOST=`hostname | tr "[:upper:]" "[:lower:]" | sed -e "s/m.*hp//g`

# PS1
export PS1='[${USER}@${IPLAN} ${FORE}${HOST}${NORM}] ${PWD##*/}$ '

# alias
alias ll='ls -l -F'
alias la='ls -l -a -F'
alias lt='ls -l -F -t'
alias lr='ls -l -F -r -t'
alias p='pwd'
alias domains='cd ~/bea/user_projects/domains'

# manuales de aplicaciones propias
MANPATH=$HOME/monopse:$MANPATH

# agregar el bin al PATH
PATH=$HOME/bin:$PATH

#
