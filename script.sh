#/bin/bash


## GERAL
sudo dpkg --add-architecture i386 
sudo apt install grub-theme-breeze grub-customizer apt-transport-https build-essential curl zsh git vim nano openjdk-8-jdk -y
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg
add -


## VARIAVEIS
DOWNLOAD_CHROME=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
DOWNLOAD_DROPBOX=https://linux.dropbox.com/packages/ubuntu/dropbox_2020.03.04_amd64.deb


## REPOSITORIOS DE TERCEIROS
    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list 
    sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y
    sudo add-apt-repository ppa:papirus/papirus -y
    sudo add-apt-repository ppa:lutris-team/lutris -y
    sudo apt update


## APLICATIVOS DOS REPOSITORIOS DE TERCEIROS
sudo apt-get install papirus-icon-theme papirus-folders -y
sudo apt install brave-browser -y
sudo apt install --install-recommends winehq-stable -y
sudo apt-get install lutris -y 


## SPOTIFY
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client


## OH MY ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sed -i 's:ZSH_THEME="robbyrussell":ZSH_THEME="bira":g' .zshrc
cd


## aplicativos .deb
mkdir .instalacao
    cd .instalacao
        wget -c $DOWNLOAD_CHROME 
        wget -c $DOWNLOAD_DROPBOX
            sudo dpkg -i *.deb
            
            
cd

sudo apt update ; sudo apt dist-upgrade
