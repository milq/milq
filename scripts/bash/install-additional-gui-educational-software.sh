# PREREQUISITES

# Use a Xfce Debian-based distribution and:

# a) Execute install-numix-xfce-debian.sh (optional: use your ~./debian_bg.png).
# b) Execute install-additional-cli-software.sh.
# c) Execute install-additional-gui-software.sh.

# 1. KEEP DEBIAN UP TO DATE

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# 2. DOWNLOAD SOFTWARE

sudo apt-get install -y geogebra
sudo apt-get install -y gperiodic
sudo apt-get install -y scratch
# sudo apt-get install -y epoptes-client

# 3. LOCK PANEL, DESKTOP AND APPAREANCE

# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml
# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml
# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml
# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml

# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

# Change '<channel name="xfce4-panel" ver...' to '<channel name="xfce4-panel" version="1.0" locked="*" unlocked="root">'
# Change '<channel name="xfce4-desktop" ver...' to '<channel name="xfce4-desktop" version="1.0" locked="*" unlocked="root">'
# Change '<channel name="xfwm4" ver...' to '<channel name="xfwm4" version="1.0" locked="*" unlocked="root">'
# Change '<channel name="xsettings" ver...' to '<channel name="xsettings" version="1.0" locked="*" unlocked="root">'


# 4. CONFIGURE AND SET UP

# sudo chmod 555 ~./Desktop

# Install last version of LibreOffice

# Configure Geany as you wish.
# Configure Gimp as you wish.

# Set Chromium to open PDF files by default.
# Set Ristretto to open JPG, PNG, GIF files by default.
# Set Geany to open text files by default.

# sudo apt-get purge transmission-gtk transmission-common

# Disable 'sudo' on an user account on Debian: deluser username sudo


# 5. CLONE WITH CLONEZILLA
