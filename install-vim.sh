#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
ln -nfs $BASEDIR/vimrc $HOME/.vimrc
ln -nfs $BASEDIR/gvimrc $HOME/.gvimrc
ln -nfs $BASEDIR/vim $HOME/.vim
