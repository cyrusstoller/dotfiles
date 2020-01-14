#!/bin/sh

# Install / update homebrew - https://brew.sh/
which -s brew
if [ $? != 0 ]; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating homebrew ..."
    brew update
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
    if brew ls --verions $brew_pkg > /dev/null; then
        echo "$brew_pkg is already installed"
    else
        echo $brew_pkg
        brew install $brew_pkg
    fi
done < $homebrew_package_list

# Start services like postgresql on boot
brew services start --all

echo
echo "Ensuring that the necessary brew cask packages are installed"
echo "Installing Homebrew Cask Packages"
echo

homebrew_cask_list="$BASEDIR/homebrew/casklist"
while read cask_pkg
do
    if brew cask ls --versions $cask_pkg > /dev/null; then
        echo "$cask_pkg is already installed"
    else
        echo "$cask_pkg"
        brew cask install $cask_pkg
    fi
done < $homebrew_cask_list

# Place preference files
