#!/bin/sh

# CAFFE INSTALLATION: http://caffe.berkeleyvision.org/installation.html

# Keep Ubuntu or Debian up to date
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

sudo apt-get install -y libopenblas-dev

sudo apt-get install -y libboost-all-dev

# Install OpenCV (http://milq.github.io/install-opencv-ubuntu-debian).

sudo apt-get install -y libprotobuf-dev protobuf-compiler
sudo apt-get install -y libgoogle-glog-dev
sudo apt-get install -y libgflags-dev

sudo apt-get install -y libhdf5-dev
sudo apt-get install -y libleveldb-dev
sudo apt-get install -y libsnappy-dev
sudo apt-get install -y liblmdb-dev

# Python 3 
sudo apt-get install -y python3-dev python3-numpy libboost-python-dev

git clone https://github.com/BVLC/caffe.git
cd caffe
mkdir build
cd build
cmake -DCPU_ONLY=ON -DUSE_CUDNN=ON ..
make all
make runtest
