#!bin/sh

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

echo
echo "Ensuring that the necessary brew cask packages are installed"
echo "Installing Homebrew Cask Packages"
echo

homebrew_cask_list="$BASEDIR/casklist"
while read cask_pkg
do
    if brew cask ls --versions $cask_pkg 2> /dev/null; then
        echo "$cask_pkg is already installed"
    else
        echo "$cask_pkg"
        brew cask install $cask_pkg
    fi
done < $homebrew_cask_list
