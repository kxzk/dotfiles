#!/usr/bin/env bash


# Maintenance & clean up
sudo apt-get update
sudo apt-get upgrade --yes
sudo apt-get dist-upgrade --yes
sudo apt-get autoremove --yes
sudo apt-get autoclean --yes

# basic utils
sudo apt-get install tree --yes
# sudo apt-get install parallel --yes
# sudo apt-get install shellcheck --yes

# my colorscheme
# git clone https://github.com/kadekillary/subtle_solo.git

# mkdir .vim
# cd .vim/
# mkdir colors
# cd

# bash scripts
# git clone https://github.com/kadekillary/bashing.git
# echo 'echo PATH=~/bashing:$PATH' >> ~/.bashrc

# bring in my colors
# ln -sv -f /home/ubuntu/subtle_solo/colors/subtle_dark.vim /home/ubuntu/.vim/colors
# ln -sv -f /home/ubuntu/subtle_solo/colors/subtle_light.vim /home/ubuntu/.vim/colors

# my dotfiles
# git clone https://github.com/kadekillary/dotfiles.git

# ln -sv -f /home/ubuntu/dotfiles/.vimrc /home/ubuntu
# ln -sv -f /home/ubuntu/dotfiles/.tmux.conf /home/ubuntu
# sed -i'' -e '24d' /home/ubuntu/.tmux.conf
# sed -i'' -e '27d' /home/ubuntu/.tmux.conf

# python 3.6
sudo add-apt-repository ppa:jonathonf/python-3.6 --yes
sudo apt-get update
sudo apt-get install python3.6 --yes
# sudo python3 -m pip uninstall pip && sudo apt install python3-pip --reinstall

# vim 8
# sudo add-apt-repository ppa:jonathonf/vim --yes
# sudo apt update
# sudo apt-get install vim --yes

# rust
# curl https://sh.rustup.rs -sSf | sh

# go
# wget https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz
# sudo tar -xvf go1.10.2.linux-amd64.tar.gz
# sudo mv go /usr/local

# 'export GOROOT=/usr/local/go' >> ~/.profile
# 'export GOPATH=$HOME/go-workspace' >> ~/.profile
# 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.profile

# source ~/.profile

# python packages
pip3 install awscli --user
pip3 install dbt --user
pip3 install pipenv --user
pip3 install visidata --user
pip3 install boto3 --user

# aliases
echo 'alias nvim="vim"' >> ~/.bashrc
echo 'alias ip="curl ipecho.net/plain ; echo"' >> ~/.bashrc
echo 'alias python="/usr/bin/python3.6/"' >> ~/.bashrc
echo 'alias pipupdate="pip3 freeze --local | grep -v "^\-e" | cur -d = -f 1 | xargs -n1 pip3 install -U"' >> ~/.bashrc
echo 'alias pipdelete="pip3 freeze | xargs pip3 uninstall -y"' >> ~/.bashrc

source ~/.bashrc
