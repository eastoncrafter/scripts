#!/bin/bash
#make sure to run as sudo
fallocate -l 8G /swapfile 
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
free -h
echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab
exit
