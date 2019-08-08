#!/data/data/com.termux/files/usr/bin/bash

apt update && apt upgrade -y
apt install unstable-repo -y
apt install metasploit -y
apt install postgresql

pg_ctl -D $PREFIX/var/lib/postgresql start

echo "You can now launch Metasploit."
echo "Run msfconsole for start Metasploit."
