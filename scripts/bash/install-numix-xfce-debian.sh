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
sudo apt-get install -y git

# 2.1. Install Numix Circle Icons
sudo mkdir -p /usr/local/share/icons
cd /usr/local/share/icons
sudo rm -rf numix-icon-theme-circle Numix-Circle Numix-Circle-Light
sudo git clone https://github.com/numixproject/numix-icon-theme-circle.git
sudo mv numix-icon-theme-circle/Numix-Circle .
sudo mv numix-icon-theme-circle/Numix-Circle-Light .
sudo rm -rf numix-icon-theme-circle


# 3. DOWNLOAD GOOGLE FONTS

# 3.1. Open Sans
cd /usr/local/share/fonts
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-Bold.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-BoldItalic.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-ExtraBold.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-ExtraBoldItalic.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-Italic.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-Light.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-LightItalic.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-Regular.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-SemiBold.ttf
sudo wget https://github.com/google/fonts/raw/master/apache/opensans/OpenSans-SemiBoldItalic.ttf


# 4. ACTIVATE NUMIX'S THEME, WM, AND ICONS IN XFCE

xfconf-query -c xsettings -p /Net/ThemeName -s 'Numix'
xfconf-query -c xfwm4 -p /general/theme -s 'Numix'
xfconf-query -c xsettings -p /Net/IconThemeName -s 'Numix-Circle'

xfconf-query -c xfwm4 -p /general/button_layout -s 'O|HMC'
xfconf-query -c xfwm4 -p /general/title_font -s 'Open Sans Semi-Bold 12'
xfconf-query -c xfwm4 -p /general/workspace_count -s 1

xfconf-query -c xsettings -p /Gtk/FontName -s 'Open Sans 12'

xfconf-query -c xsettings -p /Xft/Antialias -s 1
xfconf-query -c xsettings -p /Xft/Hinting -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -s 'hintfull'
xfconf-query -c xsettings -p /Xft/RGBA -s 'rgb'

xfconf-query -n -c xsettings -p /Xft/DPI -t int -s -1
