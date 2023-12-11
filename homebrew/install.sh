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
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities
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
brew install neovim
brew install grep
brew install git

# Install usefull binaries
brew install ack
brew install gpg

# https://github.com/jakubroztocil/httpie
brew install httpie

# https://github.com/extrawurst/gitui
brew install gitui

# Node version manager
brew install nvm

# Syntax highlighting for cat
brew install ccat

# Daily software
brew install authy --cask
brew install beekeeper-studio --cask
brew install docker --cask
brew install fing --cask
brew install google-chrome-canary --cask
brew install hiddenbar --cask
brew install insomnia --cask
brew install mailspring --cask
brew install muzzle --cask
brew install rectangle --cask
brew install slack --cask
brew install spotify --cask
brew install todoist --cask
brew install visual-studio-code --cask
brew install vlc --cask
brew install vysor --cask
brew install warp --cask

# Messaging
brew install messenger --cask
brew install whatsapp --cask

# Fonts
brew install font-fira-code --cask
brew install font-hack-nerd-font --cask

exit 0
