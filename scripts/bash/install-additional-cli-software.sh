# Script that installs additional command-line interface (CLI) software for Ubuntu/Debian

# Keep Ubuntu or Debian up to date
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# Development tools:
sudo apt-get install -y build-essential cmake

# File archivers
sudo apt-get install -y p7zip p7zip-full unrar-free unzip

# Others (need to be categorized):
sudo apt-get install -y htop lshw wget locate

# Terminal multiplexer
sudo apt-get install -y screen

# Text editors:
sudo apt-get install -y nano vim

# VCS:
sudo apt-get install -y git subversion


# OPTIONAL (uncomment your favourite CLI software)

# OCR:
# sudo apt-get install -y tesseract-ocr tesseract-ocr-eng tesseract-ocr-spa

# PDF manipulation
# sudo apt-get install -y pdftk
