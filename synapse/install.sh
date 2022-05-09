#!/bin/bash
#make sure to run as sudo
apt update
apt install lsb-release wget apt-transport-https wget curl git -y
apt install nginx -y
wget -O /usr/share/keyrings/matrix-org-archive-keyring.gpg https://packages.matrix.org/debian/matrix-org-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/matrix-org-archive-keyring.gpg] https://packages.matrix.org/debian/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/matrix-org.list
apt update
apt install matrix-synapse-py3
#cat the homeserver config to test it
cat /etc/matrix-synapse/homeserver.yaml
