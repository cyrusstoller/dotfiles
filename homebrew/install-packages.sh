#!/bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

# Install packages

echo
echo "Ensuring that the necessary brew packages are installed"
echo "Installing Homebrew Packages"
echo

homebrew_package_list="$BASEDIR/brewlist"
while read brew_pkg
do
    if brew ls --versions $brew_pkg 2> /dev/null; then
        echo "$brew_pkg is already installed"
    else
        echo $brew_pkg
        brew install $brew_pkg
    fi
done < $homebrew_package_list

# Start services like postgresql on boot
echo
echo "Ensuring that all brew services are started"
brew services start --all

# Install heroku CLI
if brew ls --versions heroku 2> /dev/null; then
    echo "Heroku CLI already installed"
else
    brew tap heroku/brew && brew install heroku
fi
