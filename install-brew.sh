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

# Install packages

echo
echo "Ensuring that the necessary brew packages are installed"
echo "Installing Homebrew Packages"
echo

homebrew_package_list="$BASEDIR/homebrew/brewlist"
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

if brew ls --versions heroku 2> /dev/null; then
    echo "Heroku CLI already installed"
else
    brew tap heroku/brew && brew install heroku
fi

echo
echo "Ensuring that the necessary brew cask packages are installed"
echo "Installing Homebrew Cask Packages"
echo

homebrew_cask_list="$BASEDIR/homebrew/casklist"
while read cask_pkg
do
    if brew cask ls --versions $cask_pkg 2> /dev/null; then
        echo "$cask_pkg is already installed"
    else
        echo "$cask_pkg"
        brew cask install $cask_pkg
    fi
done < $homebrew_cask_list

$BASEDIR/homebrew/install-sublime.sh
