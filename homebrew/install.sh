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
# Install Bash 4
brew install bash

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/php/php55 --with-gmp
brew install git
brew install git-flow
brew install git-flow-completion
brew install mariadb

# Install usefull binaries
brew install exiv2
brew install grc
brew install spark
brew install mtr
brew install mosh
brew install ack
brew install gpg
brew install node
brew install tree
brew install imagemagick --with-webp
brew install nmap
brew install rename

# PHP versions
brew tap josegonzalez/php
brew install php55
brew install php56
brew install php70

# https://github.com/github/hub
brew install hub

# https://github.com/jakubroztocil/httpie
brew install httpie

# https://github.com/sstephenson/rbenv
brew install rbenv ruby-build

# http://jonas.nitro.dk/tig/
brew install tig

# Syntax highlighting for cat
brew install ccat

# completion for tmuxinator
brew install homebrew/completions/tmuxinator-completion

# tmux
brew instal tmux

# https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
brew install reattach-to-user-namespace

# =================
#   Homebrew cask
# =================
brew install caskroom/cask/brew-cask

# Some handy tools
brew cask install atom
brew cask install google-chrome
brew cask install sequel-pro
brew cask install spectacle
brew cask install google-cloud-sdk
brew cask install nylas-n1 # a kickass (free) mail client

# =================
#   Homebrew gem
# =================
brew install brew-gem

# Some handy tools
brew gem install bundler
brew gem install sass
brew gem install jekyll
brew gem install tmuxinator
brew gem install capistrano

exit 0
