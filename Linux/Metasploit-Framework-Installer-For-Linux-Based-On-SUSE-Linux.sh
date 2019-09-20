#!/bin/sh

sudo zypper dup -y
sudo zypper ref

sudo echo [metasploit] > /etc/zypp/repos.d/metasploit-framework.repo
sudo echo name=Metasploit >> /etc/zypp/repos.d/metasploit-framework.repo
sudo echo enabled=1 >> /etc/zypp/repos.d/metasploit-framework.repo
sudo echo autorefresh=0 >> /etc/zypp/repos.d/metasploit-framework.repo
sudo echo baseurl=http://downloads.metasploit.com/data/releases/metasploit-framework/rpm >> /etc/zypp/repos.d/metasploit-framework.repo
sudo echo type=rpm-md >> /etc/zypp/repos.d/metasploit-framework.repo
sudo echo gpgcheck=1 >> /etc/zypp/repos.d/metasploit-framework.repo
sudo echo gpgkey=http://apt.metasploit.com/metasploit-framework.gpg.key >> /etc/zypp/repos.d/metasploit-framework.repo

sudo zypper ref
sudo zypper install metasploit-framework -y
