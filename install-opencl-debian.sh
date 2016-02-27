# BACKPORTS PACKAGES
# ------------------
# Check that you have the backports packages in your Debian in '/etc/apt/sources.list'.
# If not, to add backports packages, in an terminal run 'sudo nano /etc/apt/sources.list' and append the following line:
# deb http://ftp.de.debian.org/debian jessie-backports main
# Finally, in a terminal, execute: 'sudo apt-get update'

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

sudo apt-get -t jessie-backports install beignet beignet-dev

sudo updatedb
locate libOpenCL.so
