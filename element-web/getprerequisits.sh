#!/bin/bash
#make sure to run as sudo
mkdir ~/build/nodejs #create a directory for the build
cd ~/build/nodejs #change to the directory
git clone https://github.com/nodejs/node.git #clone the node repo
cd node #change to the node directory
git checkout v16.14.2 #use the LTS version
./configure #configure the node build
make -j4 #make the node build
make install #install the node build
npm install --global yarn #install yarn