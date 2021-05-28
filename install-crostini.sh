#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

sudo apt update
sudo apt -y upgrade

sudo apt install -y zsh tig tree wget tmux htop
sudo apt install -y gcc make libssl-dev libreadline-dev zlib1g-dev
sudo apt install -y g++ libgsl0-dev libpq-dev

# Dependencies for installing python
# sudo apt install -y build-essential libncurses5-dev libgdbm-dev libnss3-dev
# sudo apt install -y libsqlite3-dev libffi-dev curl libbz2-dev

$BASEDIR/apt/install-rbenv.sh
$BASEDIR/apt/install-pyenv.sh
$BASEDIR/apt/install-nvm.sh

# Install postgres and redis
sudo apt install -y postgresql
sudo apt install -y redis-server

# To create a postgres ROLE
# sudo su - postgres
# psql -U postgres
# CREATE ROLE name CREATEDB LOGIN;

$BASEDIR/apt/install-heroku.sh

# Place .zshrc and install oh-my-zsh
$BASEDIR/install-zsh.sh

# Place .vimrc and .vim directory
$BASEDIR/install-vim.sh

$BASEDIR/apt/install-sublime.sh
