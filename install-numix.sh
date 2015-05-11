#!/bin/sh

# Prerequisite
sudo apt-get install -y murrine-themes

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

# Activate Numix (theme, WM, and icons) in XFCE (comment these lines if you do not use Xfce):
xfconf-query -c xsettings -p /Net/ThemeName -s "Numix"
xfconf-query -c xfwm4 -p /general/theme -s "Numix"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Numix-Circle"
