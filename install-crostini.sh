#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

sudo apt update
sudo apt -y upgrade

sudo apt install -y zsh tig tree wget tmux htop
sudo apt install -y gcc make libssl-dev libreadline-dev zlib1g-dev
sudo apt install -y g++ libgsl0-dev libpq-dev

$BASEDIR/apt/install-rbenv.sh
$BASEDIR/apt/install-nvm.sh

# Install postgres and redis
sudo apt install -y postgresql
sudo apt install -y redis-server

$BASEDIR/apt/install-heroku.sh

# Place .zshrc and install oh-my-zsh
$BASEDIR/install-zsh.sh

# Place .vimrc and .vim directory
$BASEDIR/install-vim.sh

$BASEDIR/apt/install-sublime.sh
