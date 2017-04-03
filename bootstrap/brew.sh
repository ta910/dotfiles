#!/bin/sh
if [ ! `which brew` ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi
xcode-select --install
brew tap Homebrew/bundle
brew bundle
