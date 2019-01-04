#!/bin/bash

if [ ! "`whoami`" = "root" ]
then
    echo "Please run script as root."
    exit 1
fi

add-apt-repository -y ppa:papirus/papirus
add-apt-repository -y ppa:webupd8team/java
apt update && apt upgrade -y

apt install -y zim keepassx arc-theme papirus-icon-theme i3lock vim wmctrl \
	scrot xclip htop steam linux-tools-common parcellite linux-tools-generic \
       	network-manager-openvpn-gnome neofetch vlc gnome-disk-utility stress maven \
       	git docker.io xfce4-goodies

gpasswd -a $SUDO_USER docker

snap install spotify pdftk telegram-desktop
snap install --classic intellij-idea-ultimate

git clone https://github.com/knrdkos/desktop-scripts.git
mv desktop-scripts/*.sh /usr/local/bin/

apt install -y oracle-java8-installer
