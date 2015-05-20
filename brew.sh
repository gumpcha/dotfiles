#!/bin/bash

if test ! $(which brew); then
	echo "Installing Homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade


brew install bash
brew install caskroom/cask/brew-cask
brew install git
brew install htop-osx
brew install jq
brew install mongodb
brew install nginx
brew install peco
brew install ruby
brew install subversion
brew install the_silver_searcher
brew install tmux
brew install tree
brew install wget
brew install z
brew install zsh

brew cask install google-chrome
brew cask install dropbox
brew cask install nvalt
brew cask install omnifocus
brew cask install virtualbox
brew cask install iterm2
brew cask install 1password

### quicklook plugin 

brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlimagesize
brew cask install qlvideo
