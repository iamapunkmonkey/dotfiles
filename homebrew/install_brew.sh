#!/bin/sh
sudo -v

if test ! $(which brew)
then
  echo "Installing Brew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery

brew update

brew upgrade --all

apps=(
    ack
    rvm
    nvm
    coreutils
    moreutils
    findutils
    ffmpeg
    fortune
    ponysay
    cowsay
    git
    git-extras
    gnupg
    hub
    gnu-sed --with-default-names
    grep --with-default-names
    homebrew/completions/brew-cask-completion
    homebrew/dupes/grep
    homebrew/dupes/openssh
    mtr
    mackup
    autojump
    imagemagick --with-webp
    python
    source-highlight
    terminal-notifier
    the_silver_searcher
    tree
    ffmpeg --with-libvpx
    wget
    zsh
    thefuck
)

brew install "${apps[@]}"

brew cleanup
