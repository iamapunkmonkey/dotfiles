#!/bin/sh

if test ! $(which nvm)
then
  echo "Installing a stable version of Node"

  nvm install stable

  nvm use node

  nvm alias default node

fi

npm config set save-exact = true

packages=(
    diff-so-fancy
    git-recent
    git-open
    gulp
    http-server
    servedir
    flow-bin
    flow-typed
    npm-check-updates
    webpack
    nodemon
    svgo
    yo
)

npm install -g "${packages[@]}"
