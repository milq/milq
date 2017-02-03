# Prerequisites
sudo apt-get install -y murrine-themes git

# I do not use 'local' because it does not work properly (uncomment when it is fixed)
# if [ ! -d '/usr/local/share/themes' ]; then
#     sudo mkdir '/usr/local/share/themes'
# fi

cd /usr/share/themes/
sudo rm -rf Numix
sudo git clone https://github.com/shimmerproject/Numix.git
sudo mv Numix Numix_aux
sudo mv Numix_aux/src ./Numix
sudo rm -rf Numix_aux

if [ ! -d '/usr/local/share/icons' ]; then
    sudo mkdir '/usr/local/share/icons'
fi

cd /usr/local/share/icons/
sudo rm -rf numix-icon-theme numix-icon-theme-circle Numix Numix-Light Numix-Circle Numix-Circle-Light

sudo git clone https://github.com/numixproject/numix-icon-theme.git
sudo mv numix-icon-theme/Numix ./
sudo mv numix-icon-theme/Numix-Light ./

sudo git clone https://github.com/numixproject/numix-icon-theme-circle.git
sudo mv numix-icon-theme-circle/Numix-Circle ./
sudo mv numix-icon-theme-circle/Numix-Circle-Light ./

sudo rm -rf numix-icon-theme numix-icon-theme-circle

# Activate Numix's theme, WM, and icons in Xfce (comment these lines if you do not use Xfce):
xfconf-query -c xsettings -p /Net/ThemeName -s "Numix"
xfconf-query -c xfwm4 -p /general/theme -s "Numix"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Numix-Circle"
