#!/bin/bash

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

apps=(
  dropbox
  google-dribve
  malwarebytes-anti-malware
  glimmerblocker
  macdown
  transmit
  font-monofur
)

brew cask install "${apps[@]}"

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
