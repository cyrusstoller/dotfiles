#!/bin/sh

# Link ssh config file
BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
ln -nfs $BASEDIR/ssh/config.d $HOME/.ssh

if ! [ -e $HOME/.ssh/config ]; then
  echo "Adding a base ssh config file"  
  cp $BASEDIR/ssh/config $HOME/.ssh/config
else
  echo "ssh config file already exists"
fi
