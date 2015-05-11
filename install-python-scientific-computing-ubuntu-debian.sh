#!/bin/sh

# Keep Ubuntu or Debian up to date
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# Interpreter and the package manager:
sudo apt-get install -y python3 python3-pip

# Essential scientific libraries:
sudo apt-get install -y python3-numpy python3-matplotlib python3-scipy python3-pandas python3-simpy

# IPython:
sudo apt-get install -y ipython3 ipython3-notebook

# OpenGL:
sudo apt-get install -y python3-opengl

# Testing tools
sudo apt-get install -y python3-pytest

# GUI development:
sudo apt-get install -y python3-pyqt5 python3-pyqt5.qtopengl python3-pyqt5.qtquick

# Data storage:
sudo apt-get install -y python3-h5py

# Computer Vision
sudo apt-get install -y python3-skimage

# GUI Development
sudo apt-get install -y spyder3
