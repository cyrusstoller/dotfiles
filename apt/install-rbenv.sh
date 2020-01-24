#!/bin/sh

if [ -e "$HOME/.rbenv" ]; then
  echo "rbenv already installed"
else
  echo "Installing rbenv"
  git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
  cd ~/.rbenv && src/configure && make -C src

  mkdir -p "$(rbenv root)"/plugins
  git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
fi
