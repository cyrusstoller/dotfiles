#!/bin/sh

if [ -e "$HOME/.pyenv" ]; then
  echo "pyenv already installed"
else
  echo "Installing pyenv"
  git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv  
fi
