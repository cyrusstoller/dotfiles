#!/bin/sh

# Install / update homebrew - https://brew.sh/
which -s brew
if [ $? != 0 ]; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating homebrew ..."
    brew update
    brew upgrade
fi

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

$BASEDIR/install-packages.sh
$BASEDIR/install-casks.sh
$BASEDIR/install-sublime.sh
