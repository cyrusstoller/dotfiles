#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

# Mac OS System Preferences
$BASEDIR/preferences/macos-preferences.sh

# Place .zshrc and install oh-my-zsh
$BASEDIR/install-zsh.sh

# Install homebrew and ensure key packages are installed
$BASEDIR/homebrew/install-brew.sh

# Place .vimrc and .vim directory
$BASEDIR/install-vim.sh

# Place tmux.conf
$BASEDIR/install-tmux.sh
