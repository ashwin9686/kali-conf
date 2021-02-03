#!/bin/bash

sudo apt update
echo "Done updating the apt cache"

sudo apt install -y seclists
echo "Done installing seclists"

sudo apt install -y tmux
echo "Done installing tmux"

sudo apt install -y tilix
echo "Done installing tilix"

cd /home/kali/
echo "Changing directory to home"

wget https://raw.githubusercontent.com/ashwin9686/kali-conf/main/.tmux.conf -O /home/kali/.tmux.conf 
echo "Done setting up tmux configuration"
 
sudo apt install -y exiftool
echo "Done installing exiftool"

sudo apt intall -y masscan
echo "Done installing masscan" 

sudo apt install -y wpscan
echo "Done installing wpscan"

sudo apt install -y html2text
echo "Done installing html2text" 

sudo apt install -y remmina
echo "Done installing remmina"

sudo apt install -y cadaver
echo "Done installing cadaver for WebDAV"

sudo apt install -y gobuster
echo "Done installing Gobuster" 

sudo gzip -d /usr/share/wordlists/rockyou.txt.gz 
echo "Done unzipping rockyou list"

mkdir /home/kali/scriptsForOSCP
echo "Making directory scriptsForOSCP" 

cd /home/kali/scriptsForOSCP

wget https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh -O /home/kali/scriptsForOSCP/lse.sh
echo "Done downloading lse.sh" 

wget https://bootstrap.pypa.io/2.7/get-pip.py -O /home/kali/scriptsForOSCP/python2-pip-installation-script.py
echo "Done downloading python2-pip installation script"

python /home/kali/scriptsForOSCP/python2-pip-installation-script.py
echo "Done installng python2-pip"

sudo rm -rf /home/kali/scriptsForOSCP/

echo "Done setting up the environment"
