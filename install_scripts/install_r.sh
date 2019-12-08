#!/usr/bin/env bash

sudo apt -y \
    update \
    upgrade \
    autoremove

sudo apt install -y \
    libxml2-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libopenblas-dev \
    tree \
    visidata \
    awscli \
    r-base \
    r-base-dev

# install R packages
R --vanilla << EOF
install.packages(c("tidyverse", "R6"), repos = "https://cran.rstudios.com/")
q()
EOF

curl https://raw.githubusercontent.com/kadekillary/dotfiles/master/.vimrc > .vimrc

git config --global user.name "kade killary"
git config --global user.email "kadekillary@pm.me"
git config --global core.editor vim

echo "RUN: aws configure"
