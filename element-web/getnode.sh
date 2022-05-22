#!/bin/bash
mkdir ~/build/nodejs
cd ~/build/nodejs
git clone https://github.com/nodejs/node.git
cd node
git checkout v16.14.2 #use the LTS version
./configure