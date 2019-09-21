#!/bin/sh

sudo yum update -y
sudo yum install curl gnupg gnupg1 gnupg2 -y

echo "Enter your root password."
su -c'
echo [metasploit] > /etc/yum.repos.d/metasploit-framework.repo
echo name=Metasploit >> /etc/yum.repos.d/metasploit-framework.repo
echo baseurl=http://rpm.metasploit.com/ >> /etc/yum.repos.d/metasploit-framework.repo
echo gpgcheck=1 >> /etc/yum.repos.d/metasploit-framework.repo
echo gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-Metasploit >> /etc/yum.repos.d/metasploit-framework.repo
echo enabled=1 >> /etc/yum.repos.d/metasploit-framework.repo
curl http://apt.metasploit.com/metasploit-framework.gpg.key > /etc/pki/rpm-gpg/RPM-GPG-KEY-Metasploit'

sudo yum update -y
sudo yum install metasploit-framework -y
