#!/bin/sh

sudo yum update -y
sudo yum install curl gnupg gnupg1 gnupg2 -y

sudo echo [metasploit] > /etc/yum.repos.d/metasploit-framework.repo
sudo echo name=Metasploit >> /etc/yum.repos.d/metasploit-framework.repo
sudo echo baseurl=http://downloads.metasploit.com/data/releases/metasploit-framework/rpm >> /etc/yum.repos.d/metasploit-framework.repo
sudo echo gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-Metasploit >> /etc/yum.repos.d/metasploit-framework.repo
sudo echo enabled=1 >> /etc/yum.repos.d/metasploit-framework.repo
sudo curl http://apt.metasploit.com/metasploit-framework.gpg.key > /etc/pki/rpm-gpg/RPM-GPG-KEY-Metasploit

sudo yum update -y
sudo yum install metasploit-framework -y
