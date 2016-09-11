#!/bin/bash

#symlinking
ln -fs $(pwd)/git/gitconfig ~/.gitconfig
ln -fs $(pwd)/git/gitignore ~/.gitignore_global 

cp $(pwd)/fonts/SourceCodePro+Powerline+Awesome+Regular.ttf /Library/Fonts/

. $(pwd)/homebrew/install_brew.sh
. $(pwd)/npm/install_npm.sh
. $(pwd)/homebrew/install_brew_cask.sh
. $(pwd)/ruby/install_ruby.sh
. $(pwd)/zsh/install_zsh.sh
