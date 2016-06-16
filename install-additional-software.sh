# Keep Ubuntu or Debian up to date
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# Development tools:
sudo apt-get install -y gdebi

# Qt 5:
sudo apt-get install -y qt5-default qtcreator qml-module-qtquick2 libqt5webkit5-dev libqt5svg5-dev

# GNOME:
sudo apt-get install -y gparted pitivi

# Net:
sudo apt-get install -y network-manager-openvpn network-manager-openvpn-gnome transmission-gtk

# Office:
sudo apt-get install -y libreoffice

# Java:
sudo apt-get install -y default-jdk

# Graphics:
sudo apt-get install -y blender gimp imagemagick inkscape

# Sound:
sudo apt-get install -y pavucontrol audacity

# Text editors:
sudo apt-get install -y geany 

# Video:
sudo apt-get install -y libav-tools vlc

# LaTeX (uncomment next line to install LaTeX, it might take time)
# sudo apt-get install -y texlive-full texmaker

# If you use Xfce, it is recommended to install this application launcher 
# sudo apt-get install -y xfce4-whiskermenu-plugin gtk-theme-config

# sudo apt-get install -y gvfs-backends // Use Samba and SFTP in Thunar and MTP (Android Devices)
