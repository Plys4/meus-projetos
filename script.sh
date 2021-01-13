#!/bin/bash


## REMOVER TRAVAS DO APT
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
## --- ##

## ADD WINE REPOSITORY ##
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' 
sudo apt update

## --- ##

## ADD LUTRIS REPOSITORY && INSTALL ##
sudo add-apt-repository ppa:lutris-team/lutris -y

sudo apt update

sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386 lutris libvulkan1 libvulkan1:i386 -y

sudo apt-get install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y

sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 -y

## --- ##

## DOWNLOAD SOFTWARE DE TERCEIROS POR .DEB ##
cd Downloads/
wget -c https://linux.dropbox.com/packages/ubuntu/dropbox_2020.03.04_amd64.deb
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13.deb
cd $HOME
## --- ##

## APS DO APT ##
sudo apt install flatpak flameshot steam-installer build-essential plank xfce4-appmenu-plugin -y
## --- ##

## FLATHUB / FLATPAK ##
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.calo001.fondo
flatpak install flathub com.rafaelmardojai.Blanket
## --- ##

## PPA COREctrl + MESA DRIVER ##
sudo add-apt-repository ppa:ernstp/mesarc -y
sudo apt-get update
sudo apt install corectrl -y
## --- ##

## ZSH ##
sudo apt install zsh -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y
## --- ##

sudo apt update ; sudo apt dist-upgrade -y
