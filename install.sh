#!/bin/sh 
# vim: set ts=3 sw=3 sts=3 et si ai: 
# 
# install.sh 
# --------------------------------------------------------------------
# (c) 2008 MashedCode Co.
# 
# César Andrés Aquino <andres.aquino@gmail.com>

mkdir -p ~/bin
mv ~/aptrigger.git ~/aptrigger
chmod 0750 ~/aptrigger/aptrigger.sh
ln -sf ~/aptrigger/aptrigger.sh ~/bin/aptrigger
PATH=$HOME/bin:$PATH
echo "Set this:\n${PATH}"

#
