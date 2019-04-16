#!/usr/bin/env bash

# Install Xcode command line tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Check for latest version
brew update
# Upgrade already installed formulae
brew upgrade

# Get rid of terminal login details
touch .hushlogin

# Install brew utilities
brew install git
brew install curl
brew install python3
brew install gcut
brew install tree
brew install gcc
brew install ccache
brew install cmake
brew install pkg-config
brew install autoconf
brew install automake
brew install inetutils

brew cask install xquartz
brew cask install java
# add VisiData
# add AwsCLI

# Neovim setup
brew install neovim

