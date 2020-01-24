#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

if [ -e "$(which subl)" ]; then
  echo "Sublime already installed"
else
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  sudo apt-get install apt-transport-https
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt-get update
  sudo apt-get install sublime-text
fi

ln -nfs $BASEDIR/../preferences/Preferences.sublime-settings $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
