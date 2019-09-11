#!/usr/bin/env bash

# maintenance & clean up
sudo apt update
sudo apt full-upgrade --yes
sudo apt autoremove --yes

# basic utils
sudo apt install tree --yes
sudo apt install virtualenv --yes
# sudo apt install mailutils --yes
# sudo apt install ssmtp --yes
sudo apt zip --yes

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

sudo apt update --yes

# git
git config --global user.name "kade killary"
git config --global user.email "kadekillary@pm.me"
git config --global core.editor vim

# adjust timezone
sudo timedatectl set-timezone America/New_York
