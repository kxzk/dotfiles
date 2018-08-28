#!/usr/bin/env bash

# update environment
sudo apt-get -y \
  update \
  dist-upgrade \
  autoremove

# utils
sudo apt-get install -y \
  zip \
  tree \
  python3-pip \
  python3-virtualenv

# python libs
pip3 install awscli
pip3 install black

# vim
sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt-get update -y
sudo apt-get install vim -y

# .vimrc
curl https://gist.githubusercontent.com/kadekillary/555cc392d90d4bd0915f08e7f45369da/raw > .vimrc

# vim - colorscheme
mkdir .vim
cd ~/.vim
mkdir colors && cd colors
curl https://gist.githubusercontent.com/kadekillary/4f23495208df8f11ca8d540d0939486c/raw > subtle_dark.vim
cd

# editor and aliases
echo 'export EDITOR="vim"' >> ~/.bashrc
echo "alias ..='cd ..'" >> ~/.bashrc
echo "alias ...='cd ...'" >> ~/.bashrc
echo "alias ....='cd ....'" >> ~/.bashrc
echo "alias .....='cd .....'" >> ~/.bashrc

# enable color prompt
sed -i '/#force_color_prompt/ s/#//' .bashrc

sudo apt-get update -y
source ~/.bashrc

# git
git config --global user.name "kade killary"
git config --global user.email "kadekillary@pm.me"
git config --global core.editor vim

echo " "
echo "-----------------------"
echo " "
echo "Next: run aws configure"
echo " "
echo "-----------------------"
