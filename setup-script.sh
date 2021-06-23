#!/bin/bash

sudo apt update
echo "Done updating the apt cache"

sudo apt -y upgrade 
echo "Done upgrade all packages"

sudo timedatectl set-timezone Asia/Kolkata
echo "Changing the default timezone to Kolkata"

sudo apt install -y seclists tmux tilix davtest exiftool masscan gcc-multilib wpscan telnet html2text crowbar burpsuite pure-ftpd remmina cadaver gobuster
echo "Done installing extra packages"

cd /home/kali/
echo "Changing directory to home"

wget https://raw.githubusercontent.com/ashwin9686/kali-conf/main/.tmux.conf -O /home/kali/.tmux.conf 
echo "Done setting up tmux configuration"

sudo apt install -y atftp
sudo mkdir /tftp
sudo chown nobody: /tftp
sudo atftpd --daemon --port 69 /tftp
echo "Done setting up tftp"

sudo gzip -d /usr/share/wordlists/rockyou.txt.gz 
echo "Done unzipping rockyou list"

mkdir /home/kali/scriptsForOSCP
echo "Making directory scriptsForOSCP" 

cd /home/kali/scriptsForOSCP

wget https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh -O /home/kali/scriptsForOSCP/lse.sh
echo "Done downloading lse.sh" 

wget https://bootstrap.pypa.io/2.7/get-pip.py -O /home/kali/scriptsForOSCP/get-pip.py
echo "Done downloading python2-pip installation script"

python /home/kali/scriptsForOSCP/get-pip.py
echo "Done installng python2-pip"

pip install --upgrade setuptools
pip install impacket
echo "Done installing impacket"

echo "Done setting up the environment"
