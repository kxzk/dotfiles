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
# touch .hushlogin

# Install brew utilities
# brew install git
# add VisiData
# add AwsCLI

# Neovim setup
# brew install neovim

# Install R
brew tap homebrew/core
brew install Caskroom/cask/xquartz
brew install r
