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
# add VisiData
# add AwsCLI

# Neovim setup
brew install neovim

# Install R
brew tap homebrew/core
brew install Caskroom/cask/xquartz
brew install r

# Install Python3
brew install python3

# Install and setup ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Switch shells
chsh -s /bin/zsh

# Install Python modules
pip3 install neovim
