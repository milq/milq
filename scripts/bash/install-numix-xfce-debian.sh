####################################
# SET UP NUMIX ON DEBIAN WITH XFCE #
####################################

# | THIS SCRIPT IS TESTED CORRECTLY ON  |
# |-------------------------------------|
# | OS             | Test | Last test   |
# |----------------|------|-------------|
# | Debian 12.1    | OK   | 24 Sep 2023 |
# | Debian 11.3    | OK   | 11 Jul 2022 |


# 1. KEEP DEBIAN UP TO DATE

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove


# 2. DOWNLOAD FONTS

cd /usr/local/share/fonts
sudo apt-get install -y wget subversion

# 2.1. Open Sans
sudo rm -rf OpenSans
sudo mkdir OpenSans
cd OpenSans
sudo svn export https://github.com/googlefonts/opensans.git/trunk/fonts/ttf/
cd ..

# 2.2. Arimo
sudo rm -rf Arimo
sudo mkdir Arimo
cd Arimo
sudo svn export https://github.com/googlefonts/Arimo.git/trunk/fonts/ttf/
cd ..


# 2.3. Cousine
sudo rm -rf Cousine
sudo mkdir Cousine
cd Cousine
sudo svn export https://github.com/googlefonts/cousine.git/trunk/fonts/ttf/
cd ..

# 2.4. Fira
sudo rm -rf Fira
sudo mkdir Fira
cd Fira
sudo svn export https://github.com/mozilla/Fira.git/trunk/ttf/
cd ..

# 3. INSTALL NUMIX THEME AND NUMIX ICONS

sudo apt-get install -y numix-gtk-theme
sudo apt-get install -y numix-icon-theme
sudo apt-get install -y numix-icon-theme-circle


# 4. DOWNLOAD A DEBIAN DESKTOP BACKGROUND

sudo mkdir -p /usr/local/share/images
cd /usr/local/share/images
sudo wget http://wallpapercave.com/wp/uB1CL6W.png -O debian_bg.png


# 5. CONFIG NUMIX'S THEME, WM, AND ICONS IN XFCE

xfconf-query -c xsettings -p /Net/ThemeName -s 'Numix'
xfconf-query -c xfwm4 -p /general/theme -s 'Numix'
xfconf-query -c xsettings -p /Net/IconThemeName -s 'Numix-Circle'

xfconf-query -c xfwm4 -p /general/button_layout -s 'O|HMC'
xfconf-query -c xfwm4 -p /general/title_font -s 'Open Sans Semi-Bold 12'
xfconf-query -c xfwm4 -p /general/workspace_count -s 1

xfconf-query -c xsettings -p /Gtk/FontName -s 'Open Sans 12'

xfconf-query -n -c xsettings -p /Gtk/ColorScheme -t string -s 'selected_bg_color:#204a87;selected_fg_color:#eeeeee;'

xfconf-query -c xsettings -p /Xft/Antialias -s 1
xfconf-query -c xsettings -p /Xft/Hinting -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -s 'hintfull'
xfconf-query -c xsettings -p /Xft/RGBA -s 'rgb'

xfconf-query -n -c xsettings -p /Xft/DPI -t int -s -1

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/image-style -s 5
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s '/usr/local/share/images/debian_bg.png'

xfconf-query --channel thunar --property /misc-exec-shell-scripts-by-default --create --type bool --set true

# 6. CONFIG TERMINAL APPEARANCE

echo '[Configuration]' > ~/.config/xfce4/terminal/terminalrc
echo 'FontName=Fira Mono Regular 12' >> ~/.config/xfce4/terminal/terminalrc
echo 'ColorBackground=#002b36' >> ~/.config/xfce4/terminal/terminalrc
echo 'ColorForeground=#d4e1e2' >> ~/.config/xfce4/terminal/terminalrc
echo 'ColorCursor=#93a1a1' >> ~/.config/xfce4/terminal/terminalrc
echo 'TabActivityColor=#dc322f' >> ~/.config/xfce4/terminal/terminalrc
echo 'ColorPalette=#073642;#dc322f;#859900;#b58900;#268bd2;#d33682;#2aa198;#eee8d5;#002b36;#cb4b16;#586e75;#657b83;#5e858b;#6c71c4;#93a1a1;#fdf6e3' >> ~/.config/xfce4/terminal/terminalrc


# 7. INSTALL ADDITIONAL SOFTWARE

sudo apt-get -y install xfce4-whiskermenu-plugin
sudo apt-get -y install xfce4-battery-plugin
sudo apt-get -y install xfce4-pulseaudio-plugin
sudo apt-get -y install xfce4-datetime-plugin
# sudo apt-get install xfce4-power-manager-plugins

sudo apt-get -y install chromium
sudo apt-get -y install geany


# 8. CONFIG PANEL

sudo apt-get -y install psmisc

rm -rf ~/.config/xfce4/panel
mkdir ~/.config/xfce4/panel

wget https://raw.githubusercontent.com/milq/milq/master/scripts/bash/config/panel/datetime-10.rc -P ~/.config/xfce4/panel

rm -f ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
wget https://raw.githubusercontent.com/milq/milq/master/scripts/bash/config/xfce4-panel.xml -P ~/.config/xfce4/xfconf/xfce-perchannel-xml

killall xfconfd
xfce4-panel -r
