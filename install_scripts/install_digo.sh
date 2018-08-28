#!/usr/bin/env bash

# maintenance & clean up
sudo apt-get update
sudo apt-get dist-upgrade --yes
sudo apt-get autoremove --yes

# basic utils
sudo apt-get install tree --yes
sudo apt-get install virtualenv --yes
sudo apt-get install mailutils --yes
sudo apt-get install ssmtp --yes
sudo apt-get install zip --yes
sudo apt-get install python3-pip --yes

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

source .profile

curl https://gist.githubusercontent.com/kadekillary/555cc392d90d4bd0915f08e7f45369da/raw > .vimrc


mkdir .vim
cd ~/.vim
mkdir colors
cd colors
curl https://gist.githubusercontent.com/kadekillary/4f23495208df8f11ca8d540d0939486c/raw > subtle_dark.vim
cd

echo 'export EDITOR="vim"' >> ~/.bashrc
echo "alias ..='cd ..'" >> ~/.bashrc
echo "alias ...='cd ...'" >> ~/.bashrc
echo "alias ....='cd ....'" >> ~/.bashrc
echo "alias .....='cd .....'" >> ~/.bashrc

# bash scripts
mkdir bin
echo "export PATH=$HOME/bin:/usr/local/bin:$PATH" >> ~/.bashrc

# enable color prompt
sed -i '/#force_color_prompt/ s/#//' ~/.bashrc

source ~/.bashrc

sudo apt-get update --yes

# git
git config --global user.name "kade killary"
git config --global user.email "kadekillary@pm.me"
git config --global core.editor vim
