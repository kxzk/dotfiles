#!/usr/bin/env bash


# maintenance & clean up
sudo apt-get update
sudo apt-get upgrade --yes
sudo apt-get dist-upgrade --yes
sudo apt-get autoremove --yes
sudo apt-get autoclean --yes

# basic utils
sudo apt-get install tree --yes

# pip3
# python version on ubuntu 18.04 is 3.6.5
sudo apt install python3-pip --yes

# vim8
sudo add-apt-repository ppa:jonathonf/vim --yes
sudo apt update
sudo apt-get install vim --yes

# go
wget https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz
sudo tar -xvf go1.10.2.linux-amd64.tar.gz
sudo mv go /usr/local

echo 'export GOROOT=/usr/local/go' >> ~/.profile
echo 'export GOPATH=$HOME/go-workspace' >> ~/.profile
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.profile

source ~/.profile

# .vimrc
curl https://gist.githubusercontent.com/kadekillary/555cc392d90d4bd0915f08e7f45369da/raw > .vimrc

echo 'export EDITOR="vim"' >> ~/.bashrc

source ~/.bashrc
