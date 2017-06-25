####################################
# SET UP NUMIX ON DEBIAN WITH XFCE #
####################################

# | THIS SCRIPT IS TESTED CORRECTLY ON  |
# |-------------------------------------|
# | OS             | Test | Last test   |
# |----------------|------|-------------|
# | Debian 9.0     | OK   | 25 Jun 2017 |


# 1. KEEP DEBIAN UP TO DATE

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove


# 2. INSTALL NUMIX THEME AND NUMIX ICONS

sudo apt-get install -y numix-gtk-theme
sudo apt-get install -y numix-icon-theme

sudo git clone https://github.com/numixproject/numix-icon-theme.git

# 3. ACTIVATE NUMIX'S THEME, WM, AND ICONS IN XFCE

xfconf-query -c xsettings -p /Net/ThemeName -s 'Numix'
xfconf-query -c xfwm4 -p /general/theme -s 'Numix'
xfconf-query -c xsettings -p /Net/IconThemeName -s 'Numix-Circle'

xfconf-query -c xfwm4 -p /general/button_layout -s 'O|HMC'
xfconf-query -c xfwm4 -p /general/workspace_count -s 1

xfconf-query -c xsettings -p /Xft/Antialias -s 1
xfconf-query -c xsettings -p /Xft/DPI -s -1
xfconf-query -c xsettings -p /Xft/Hinting -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -s 'hintfull'
xfconf-query -c xsettings -p /Xft/RGBA -s 'rgb'
