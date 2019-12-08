#!/usr/bin/env bash

sudo apt -y \
    update \
    upgrade

sudo apt install -y \
    python3 \
    python3-pip \
    python3-dev \
    curl \
    tree \
    visidata \
    awscli

pip3 install \
    pandas \
    pandas-bokeh \
    seaborn \
    plotly \
    scikit-learn \
    yellowbrick \
    nb_black \
    jupyterlab

ufw enable
ufw allow 8888
ufw allow 22

sudo apt -y \
    update \
    upgrade

jupyter lab --allow-root --no-browser --port=8888 --ip=0.0.0.0
