@echo off

curl http://windows.metasploit.com/metasploitframework-latest.msi -o C:\Users\%username%\Downloads\metasploitframework-latest.msi
msiexec /i "C:\Users\%username%\Downloads\metasploitframework-latest.msi" INSTALLDIR="C:\metasploit-framework" /qr /norestart 
del C:\Users\%username%\Downloads\metasploitframework-latest.msi
