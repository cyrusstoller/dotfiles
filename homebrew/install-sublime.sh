#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

echo "Installing sublime settings"
ln -nfs $BASEDIR/../preferences/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
