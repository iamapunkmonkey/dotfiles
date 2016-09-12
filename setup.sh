#!/bin/bash

#install xcode command line tools
if ! xcode-select --print-path &> /dev/null; then
  xcode-select --install &> /dev/null

  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done

  print_result $? 'Install XCode Command Line Tools'

  sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
  print_result $? 'Make "xcode-select" developer directory point to Xcode'

  sudo xcodebuild -license
  print_result $? 'Agree with the XCode Command Line Tools licence'

fi

#symlinking
ln -fs $(pwd)/git/gitconfig ~/.gitconfig
ln -fs $(pwd)/git/gitignore ~/.gitignore_global
ln -fs $(pwd)/mackup/mackup.cgf ~/.mackup.cfg

cp $(pwd)/fonts/SourceCodePro+Powerline+Awesome+Regular.ttf /Library/Fonts/

. $(pwd)/homebrew/install_brew.sh
. $(pwd)/npm/install_npm.sh
. $(pwd)/homebrew/install_brew_cask.sh
. $(pwd)/ruby/install_ruby.sh
. $(pwd)/zsh/install_zsh.sh
