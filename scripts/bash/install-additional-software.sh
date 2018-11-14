# DESCRIPTION: this script installs additional CLI and GUI software for Ubuntu/Debian

# 1. KEEP UBUNTU OR DEBIAN UP TO DATE

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove


# 2. CLI SOFTWARE

sudo apt-get install -y build-essential cmake               # DEVELOPMENT TOOLS
sudo apt-get install -y p7zip p7zip-full unrar-free unzip   # FILE ARCHIVERS
sudo apt-get install -y htop lshw wget locate               # UTILITIES
sudo apt-get install -y screen                              # TERMINAL MULTIPLEXER
sudo apt-get install -y nano vim                            # TEXT EDITORS
sudo apt-get install -y git subversion                      # VCS
sudo apt-get install -y pdftk                               # PDF MANIPULATION
# sudo apt-get install -y tesseract-ocr tesseract-ocr-eng   # OCR (optional)


# 3. GUI SOFTWARE

sudo apt-get install -y gdebi                               # DEB FILES INSTALLER
sudo apt-get install -y gparted                             # PARTITION TOOL
sudo apt-get install -y gtk-theme-config                    # SIMPLE GTK+ THEME EDITOR
sudo apt-get install -y gvfs-backends                       # USERSPACE VIRTUAL FILESYSTEM
sudo apt-get install -y network-manager-openvpn-gnome       # NETWORK MANAGER AND OPENVPN FOR GNOME
sudo apt-get install -y network-manager-openvpn             # NETWORK MANAGER AND OPENVPN
sudo apt-get install -y transmission-gtk                    # BITTORRENT CLIENT
sudo apt-get install -y libreoffice                         # OFFICE
sudo apt-get install -y default-jdk                         # JAVA SDK
sudo apt-get install -y blender gimp imagemagick inkscape   # GRAPHICS
sudo apt-get install -y pavucontrol audacity                # SOUND
sudo apt-get install -y geany                               # TEXT EDITOR
sudo apt-get install -y pitivi libav-tools vlc              # VIDEO
# sudo apt-get install -y texlive-full texmaker             # LATEX (optional, heavy package)
# sudo apt-get install -y xfce4-whiskermenu-plugin          # XFCE WHISKER MENU (optional)
