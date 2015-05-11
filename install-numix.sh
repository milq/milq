#!/bin/sh

cd /usr/share/themes/
sudo rm -rf Numix
sudo git clone https://github.com/shimmerproject/Numix.git

cd /usr/share/icons/
sudo rm -rf numix-icon-theme numix-icon-theme-circle Numix Numix-Light Numix-Circle Numix-Circle-Light

sudo git clone https://github.com/numixproject/numix-icon-theme.git
sudo mv numix-icon-theme/Numix ./
sudo mv numix-icon-theme/Numix-Light ./

sudo git clone https://github.com/numixproject/numix-icon-theme-circle.git
sudo mv numix-icon-theme-circle/Numix-Circle ./
sudo mv numix-icon-theme-circle/Numix-Circle-Light ./

sudo rm -rf numix-icon-theme numix-icon-theme-circle
