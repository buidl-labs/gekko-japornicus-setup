#! /usr/bin/env bash

echo "Installing python dependencies"

sudo apt-get update

# Install basic desktop + firefox
sudo apt-get install -y lubuntu-core
sudo apt-get install -y firefox

# Install Node.JS dependencies
wget -qO- https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Python3.6 and dependencies
sudo apt-get install -y python3.6 python3.6-dev python3.6-tk python3.6-distutils
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.6 get-pip.py

# Side dependencies
sudo apt-get install -y build-essential libssl-dev libffi-dev libxml2-dev libxslt1-dev zlib1g-dev gcc g++ make

# Setup Dev folder
mkdir Dev
cd Dev

# Setup Gekko
git clone git://github.com/askmike/gekko.git -b stable
cd gekko
npm install --only=production
cd exchange
npm install --only=production	

cd 
cd Dev

# Setup Japornicus 
git clone https://github.com/Gab0/japonicus.git
cd japonicus
pip3 install numpy==1.14.5 Cython pandas==0.18.1
pip3 install -r requirements.txt


