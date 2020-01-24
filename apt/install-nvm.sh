#!/bin/sh

if [ -e "$HOME/.nvm" ]; then
  echo "nvm already installed"
else
  echo "Installing nvm"
  mkdir -p $HOME/.nvm
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi
