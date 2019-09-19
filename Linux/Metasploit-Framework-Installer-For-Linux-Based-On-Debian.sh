#!/bin/sh

sudo apt update && sudo apt upgrade -y
sudo apt install wget gnupg gnupg1 gnupg2 -y

sudo echo 'http://downloads.metasploit.com/data/releases/metasploit-framework/apt lucid main' > /etc/apt/sources.list.d/metasploit-framework.list
sudo wget -O - http://apt.metasploit.com/metasploit-framework.gpg.key | apt-key add -
sudo apt update
sudo apt install metasploit-framework -y
