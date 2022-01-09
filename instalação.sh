#/usr/bin/env bash

## VARIÁVEIS ##
APLICATIVOS_APT=" steam-installer 
    wine-installer 
    libvulkan1 
    libvulkan1:i386 
    libgnutls30:i386 
    libldap-2.4-2:i386 
    libgpg-error0:i386 
    libxml2:i386 
    libasound2-plugins:i386 
    libsdl2-2.0-0:i386 
    libfreetype6:i386 
    libdbus-1-3:i386 
    libsqlite3-0:i386 
    vlc
    lutris 
    "

PPA_LUTRIS="ppa:lutris-team/lutris"

DOWNLOAD_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
DOWNLOAD_DISCORD="https://dl.discordapp.net/apps/linux/0.0.16/discord-0.0.16.deb"
DOWNLOAD_ANGRYIP="https://objects.githubusercontent.com/github-production-release-asset-2e65be/1968850/c4318500-6fdc-11eb-98a0-b4a00719cd58?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20220109%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220109T003900Z&X-Amz-Expires=300&X-Amz-Signature=92030fb9baa87fd1464ad91bc18cad8b557b1eb36d7dfc83a8db2b52513bc5b7&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=1968850&response-content-disposition=attachment%3B%20filename%3Dipscan_3.7.6_amd64.deb&response-content-type=application%2Foctet-stream"

## INSTALAÇÃO DO LUTRIS ##
sudo apt add-repository "$PPA_LUTRIS"
sudo apt update

## REMOÇÃO DE POSSIVEIS TRAVAS DO APT ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## INSTALAÇÃO DOS APLICATIVOS DO APT ##

sudo apt install "$APLICATIVOS_APT"

## INSTALAR OS .DEB's ##
mkdir .archives_installation
cd .archives_installation
wget -c "$DOWNLOAD_CHROME"
wget -c "$DOWNLOAD_DISCORD"
wget -c "$DOWNLOAD_ANGRYIP"
sudo dpkg --install google-chrome-stable_current_amd64.deb discord-0.0.16.deb ipscan_3.7.6_amd64.deb -y
sudo apt install -f
cd /home/$USER

## INSTALAR FLATPAK's ##
# FLATPAK FUNCIONANDO OUT-OF-THE-BOX no mint 20.3 #
sudo flatpak install flathub com.vscodium.codium org.remmina.Remmina io.github.shiftey.Desktop com.github.unrud.RemoteTouchpad io.github.seadve.Mousai sh.ppy.osu com.spotify.Client com.github.geigi.cozy -y

## ATUALIZANDO O SISTEMA ##
clear
sudo apt update ; sudo apt dist-upgrade

