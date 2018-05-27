#!/usr/bin/env bash


# Maintenance & clean up
sudo apt-get update
sudo apt-get upgrade --yes
sudo apt-get dist-upgrade --yes
sudo apt-get autoremove --yes
sudo apt-get autoclean --yes

sudo apt install tree

# my colorscheme
git clone https://kadekillary:winner13@github.com/kadekillary/subtle_solo.git

mkdir .vim
cd .vim/
mkdir colors
cd

# bash scripts
git clone https://kadekillary:winner13@github.com/kadekillary/bashing.git
echo 'echo PATH=~/bashing:$PATH' >> ~/.bashrc

# bring in my colors
ln -sv -f /home/ubuntu/subtle_solo/colors/subtle_dark.vim /home/ubuntu/.vim/colors
ln -sv -f /home/ubuntu/subtle_solo/colors/subtle_light.vim /home/ubuntu/.vim/colors

# my dotfiles
git clone https://kadekillary:winner13@github.com/kadekillary/dotfiles.git

ln -sv -f /home/ubuntu/dotfiles/.vimrc /home/ubuntu
ln -sv -f /home/ubuntu/dotfiles/.tmux.conf /home/ubuntu
sed -i'' -e '24d' /home/ubuntu/.tmux.conf
sed -i'' -e '27d' /home/ubuntu/.tmux.conf

# pip3
sudo apt-get install python3-pip --yes
pip3 install --upgrade pip

# python 3.6
sudo add-apt-repository ppa:deadsnakes/ppa --yes
sudo apt update
sudo apt-get install python3.6 --yes

# install utils
sudo apt-get install shellcheck --yes
sudo add-apt-repository ppa:jonathonf/vim --yes
sudo apt update
sudo apt-get install vim --yes

# python packages
pip3 install awscli
pip3 install dbt
pip3 install pipenv
pip3 install visidata
pip3 install boto3

# aliases
echo 'alias nvim="vim"' >> ~/.bashrc
echo 'alias ip="curl ipecho.net/plain ; echo"' >> ~/.bashrc
echo 'alias python="/usr/bin/python3.6/"' >> ~/.bashrc
echo 'alias pipupdate="pip3 freeze --local | grep -v "^\-e" | cur -d = -f 1 | xargs -n1 pip3 install -U"' >> ~/.bashrc
echo 'alias pipdelete="pip3 freeze | xargs pip3 uninstall -y"' >> ~/.bashrc

source ~/.bashrc
