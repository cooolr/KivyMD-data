#!/bin/bash

# Install Python pip
sudo apt-get install -y curl
sudo apt-get install -y python3-distutils
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py

# Dependencies with SDL2
# Install necessary system packages
sudo apt-get install -y \
    build-essential \
    git \
    python \
    python3-dev \
    ffmpeg \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libportmidi-dev \
    libswscale-dev \
    libavformat-dev \
    libavcodec-dev 

# Dependencies Kivy
sudo pip3 install cython

# Install Kivy
sudo pip3 install kivy

# Dependencies Buildozer
sudo apt install -y \
    ccache \
    unzip \
    libncurses5 \
    libstdc++6 \
    libgtk2.0-0 \
    libpangox-1.0-0 \
    libpangoxft-1.0-0 \
    libidn11 \
    python2.7 \
    python2.7-dev \
    openjdk-8-jdk \
    zlib1g-dev \
    zlib1g \
    libltdl-dev \
    libffi-dev \
    libssl-dev \
    dh-autoreconf \
    automake \
    autoconf \
    autotools-dev \
    pkgconf \
    libtool \
    lld \
    zip \
    cmake \
    clang

# Install Buildozer
mkdir ~/buildozer-repo
cd ~/buildozer-repo

git clone https://github.com/kivy/buildozer.git
cd buildozer
sudo python3 setup.py install
