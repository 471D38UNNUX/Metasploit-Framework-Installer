#!/bin/sh

sudo zypper dup -y
sudo zypper ref

echo "Enter your root password."
su -c'
echo [metasploit] > /etc/zypp/repos.d/metasploit-framework.repo
echo name=Metasploit >> /etc/zypp/repos.d/metasploit-framework.repo
echo enabled=1 >> /etc/zypp/repos.d/metasploit-framework.repo
echo autorefresh=0 >> /etc/zypp/repos.d/metasploit-framework.repo
echo baseurl=http://downloads.metasploit.com/data/releases/metasploit-framework/rpm >> /etc/zypp/repos.d/metasploit-framework.repo
echo type=rpm-md >> /etc/zypp/repos.d/metasploit-framework.repo
echo gpgcheck=1 >> /etc/zypp/repos.d/metasploit-framework.repo
echo gpgkey=http://apt.metasploit.com/metasploit-framework.gpg.key >> /etc/zypp/repos.d/metasploit-framework.repo'

sudo zypper ref
sudo zypper install metasploit-framework
