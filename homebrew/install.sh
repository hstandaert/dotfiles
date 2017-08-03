#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names
# Install Bash
brew install bash

# Install ZSH
brew install zsh zsh-completions

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install git
brew install mysql

# Install usefull binaries
brew install ack
brew install gpg
brew install node
brew install imagemagick --with-webp
brew install rename

# PHP versions
brew tap josegonzalez/php
brew install php55
brew install php56
brew install php70
brew install php71

# https://github.com/jakubroztocil/httpie
brew install httpie

# https://github.com/sstephenson/rbenv
brew install rbenv ruby-build

# http://jonas.nitro.dk/tig/
brew install tig

# Node version manager
brew install nvm

# Syntax highlighting for cat
brew install ccat

# =================
#   Homebrew cask
# =================
brew install caskroom/cask/brew-cask

# Add command to upgrade casks
brew tap buo/cask-upgrade

# Some handy tools
brew cask install atom
brew cask install google-chrome
brew cask install sequel-pro
brew cask install spectacle
brew cask install google-cloud-sdk
brew cask install caffeine

#Extensions for mac OSX quicklook
brew cask install qlcolorcode
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install qlstephen

exit 0
