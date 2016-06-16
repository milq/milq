# Script that installs command-line interface (CLI) software for Ubuntu/Debian

# Keep Ubuntu or Debian up to date
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# Useful terminal utilities:
sudo apt-get install -y faketime pdftk wget

# Htop (interactive process viewer):
sudo apt-get install -y htop

# Hardware Lister (list hardware):
sudo apt-get install -y lshw

# File archivers
sudo apt-get install -y p7zip p7zip-full unrar-free unzip

# Terminal multiplexer
sudo apt-get install -y screen

# VCS:
sudo apt-get install -y git subversion
