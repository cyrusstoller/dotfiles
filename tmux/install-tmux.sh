#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
ln -nfs $BASEDIR/tmux.conf $HOME/.tmux.conf
