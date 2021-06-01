#!/bin/bash
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
wget -c https://dl2.tlauncher.org/f.php?f=files%2FTLauncher-2.75.zip
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install steam-installer build-essential flatpak zsh flameshot -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y
sudo apt update ; sudo apt dist-upgrade
