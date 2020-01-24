#!/bin/sh

if [ -e "$(which heroku)" ]; then
  echo "Heroku already installed"
else
  echo "Installing heroku CLI"
  curl https://cli-assets.heroku.com/install.sh | sh
fi
