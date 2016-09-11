#!/bin/bash

#symlinking
ln -fs ~/.gitconfig $(pwd)/git/gitconfig
ln -fs ~/.gitignore_global $(pwd)/git/gitignore

cp $(pwd)/fonts/SourceCodePro+Powerline+Awesome+Regular.ttf /Library/Fonts/

. $(pwd)/homebrew/install_brew.sh
. $(pwd)/npm/install_npm.sh
. $(pwd)/homebrew/install_brew_cask.sh
. $(pwd)/ruby/install_ruby.sh
. $(pwd)/zsh/install_zsh.sh
