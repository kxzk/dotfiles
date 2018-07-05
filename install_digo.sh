#!/usr/bin/env bash

# maintenance & clean up
sudo apt-get update
sudo apt-get upgrade --yes
sudo apt-get dist-upgrade --yes
sudo apt-get autoremove --yes
sudo apt-get autoclean --yes

# basic utils
sudo apt-get install tree --yes
sudo apt-get install virtualenv --yes
sudo apt-get install mailutils --yes
sudo apt-get install ssmtp --yes

# sudo vim /etc/ssmtp/ssmtp.conf
# Uncomment FromLineOverride=YES by deleting the #
# Add the following to the file:

# AuthUser=<user>@gmail.com
# AuthPass=Your-Gmail-Password
# mailhub=smtp.gmail.com:587
# UseSTARTTLS=YES

# install for DBT
sudo apt-get install libpq-dev --yes
sudo apt-get install python-dev --yes

# remember to upgrade if using DBT
# pip install psycopg2 --upgrade

# vim8
sudo add-apt-repository ppa:jonathonf/vim --yes
sudo apt update
sudo apt-get install vim --yes

# go
# sudo apt-get install golang-go --yes

# echo 'export GOROOT=/usr/local/go' >> ~/.profile
# echo 'export GOPATH=$HOME/go-workspace' >> ~/.profile
# echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.profile

# rust
# curl https://sh.rustup.rs -sSf | sh

# mkdir go-workspace
# cd go-workspace/
# mkdir src bin pkg
# cd

# source .profile

# .vimrc
curl https://gist.githubusercontent.com/kadekillary/555cc392d90d4bd0915f08e7f45369da/raw > .vimrc

mkdir .vim
cd ~/.vim
mkdir colors
cd colors
curl https://gist.githubusercontent.com/kadekillary/dd8ad27cd950556e15137cf590371963/raw > subtle_light.vim
cd
