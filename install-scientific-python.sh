# Keep Ubuntu or Debian up to date
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# Interpreter and the package manager:
sudo apt-get install -y python3 python3-dev python3-pip

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

# Install Scikit-learn (http://scikit-learn.org/stable/install.html)
sudo apt-get install -y libopenblas-dev
sudo pip3 install scikit-learn

# Installing Theano (http://www.deeplearning.net/software/theano/install_ubuntu.html)
sudo apt-get install -y build-essential libopenblas-dev git
sudo apt-get install -y python3-nose python3-nose2
sudo pip3 install Theano

# Installing Pylearn2
# sudo apt-get install -y python3-pil python3-yaml cython3

# Installing Neon
# sudo apt-get install -y python3-pil cython3
# sudo apt-get install -y python3 python3-numpy python3-yaml libyaml-cpp-dev
# In ~/Local/Libraries:
# git clone https://github.com/NervanaSystems/neon.git
# cd neon
# sudo python3 setup.py install

# Installing Neon (Python 2)
# sudo apt-get install -y python3-pil cython3
# sudo apt-get install -y python python-numpy python-yaml libyaml-cpp-dev libyaml-dev
# In ~/Local/Libraries:
# git clone https://github.com/NervanaSystems/neon.git
# cd neon
# sudo python setup.py install

# GUI Development
sudo apt-get install -y spyder3
sudo pip3 install rope_py3k # If you want to enjoy the autocomplete in the IDE


