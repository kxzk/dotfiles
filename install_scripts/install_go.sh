#!/usr/bin/env bash


# maintenance & clean up
sudo apt-get update
sudo apt-get upgrade --yes
sudo apt-get dist-upgrade --yes
sudo apt-get autoremove --yes
sudo apt-get autoclean --yes

# vim8
sudo add-apt-repository ppa:jonathonf/vim --yes
sudo apt update
sudo apt-get install vim --yes

mkdir go
cd go
mkdir src bin pkg
cd

# go
sudo apt-get install golang-go --yes

echo 'export GOROOT=/usr/lib/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.bashrc

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
