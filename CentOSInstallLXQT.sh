#!/bin/bash

yum install -y wget
mkdir ./.INSTALLEPEL711
cd ./.INSTALLEPEL711
wget https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
rm ./epel-release-7-11.noarch.rpm
cd ..
rmdir ./.INSTALLEPEL711

# Install Xsever
  yum groupinstall -y "X Window System"

# Install LXQT
  yum install -y lxqt* --exclude=lxqt-*-devel

# Install Login View
  yum install -y lightdm-gtk lightdm-settings

# Insall Openbox (LXQT Need Base On WM)
  yum install -y openbox obconf*

# Install Chinese Font 
  yum install -y wqy-microhei-fonts

# Install Terminal
  yum install -y gnome-terminal
# yum install -y konsole

#Set Default Open GUI
systemctl set-default graphical.target

echo "--- Package Are Installed ---"

## Ref Data1:https://serverfault.com/questions/193352/latest-openbox-yum-package-standalone-install-centos
## Ref Data2:https://juejin.im/post/5c934a3c6fb9a070e46232bf
