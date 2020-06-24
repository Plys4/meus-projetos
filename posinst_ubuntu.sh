#!/bin/bash
sudo apt install zsh flatpak gnome-software-plugin-flatpak papirus-icon-theme -y
wget -qO- https://git.io/papirus-folders-install | sh
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.axosoft.GitKraken -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" -y
# - - - #
sed -i s/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g .zshrc


