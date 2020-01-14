#!/bin/sh

# Install oh-my-zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Place zshrc
BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
ln -nfs $BASEDIR/zsh/zshrc $HOME/.zshrc

# Make dir for nvm
mkdir -p $HOME/.nvm
