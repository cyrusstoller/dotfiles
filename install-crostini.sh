#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

sudo apt update
sudo apt -y upgrade

sudo apt install -y zsh tig tree wget
sudo apt install -y gcc make libssl-dev libreadline-dev zlib1g-dev

# Install rbenv
if [ -e "$HOME/.rbenv" ]; then
  echo "rbenv already installed"
else
  echo "Installing rbenv"
  git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
  cd ~/.rbenv && src/configure && make -C src

  mkdir -p "$(rbenv root)"/plugins
  git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
fi

# Install nvm
if [ -e "$HOME/.nvm" ]; then
  echo "nvm already installed"
else
  echo "Installing nvm"
  mkdir -p $HOME/.nvm
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi

# Install postgres and redis
sudo apt install -y postgresql
sudo apt install -y redis-server

# Install heroku

if [ -e "$(which heroku)" ]; then
  echo "Heroku already installed"
else
  echo "Installing heroku CLI"
  curl https://cli-assets.heroku.com/install.sh | sh
fi

# Place .zshrc and install oh-my-zsh
$BASEDIR/install-zsh.sh

# Place .vimrc and .vim directory
$BASEDIR/install-vim.sh
