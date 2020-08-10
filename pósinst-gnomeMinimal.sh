#!/bin/bash
DOWNLOAD_CHROME=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt update
sudo apt install xorg zsh gdm3 flatpak openjdk-8-jre gnome-session vlc gnome-control-center network-manager pulseaudio pavucontrol gnome-tweaks nautilus gnome-terminal software-properties-gtk wget kdenlive audacity flameshot --no-install-recommends
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y
sed -i s/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g .zshrc
cd Downloads/
wget -c $DOWNLOAD_CHROME
sudo dpkg --install google-chrome-stable_current_amd64.deb
cd
sudo dpkg - 
sudo apt remove snapd
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt-get update
sudo apt-get install lutris