#!/bin/bash
sudo apt install zsh flatpak gnome-software-plugin-flatpak papirus-icon-theme -y
wget -qO- https://git.io/papirus-folders-install | sh
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#flatpak install flathub com.axosoft.GitKraken -y

sudo dpkg --add-architecture i386 
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' 
sudo apt install --install-recommends winehq-stable
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt-get update 
sudo apt-get install lutris

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y
sed -i s/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g .zshrc


