# 1. KEEP DEBIAN UP TO DATE

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove


# 2. DOWNLOAD FONTS

sudo apt-get install -y geogebra
sudo apt-get install -y gperiodic
sudo apt-get install -y scratch
sudo apt-get install -y epoptes-client

# LOCK PANEL, DESKTOP AND APPAREANCE

# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml
# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
# Change '<channel name="xfce4-panel" version="1.0">' to '<channel name="xfce4-panel" version="1.0" locked="*" unlocked="root">'
