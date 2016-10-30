## Install Anaconda for Linux

1. Download the installer for Linux Anaconda at: [continuum.io/downloads](http://continuum.io/downloads).
2. In a terminal console, execute: ```bash name_of_the_installer.sh``` to install Anaconda.
3. Specify one location to install Anaconda. E.g.: ```/home/user/Local/Software/Anaconda```.
4. Optionally, you can let the installer prepend the path of your Anaconda install location in ```/home/user/.bashrc```.

## Running Spyder in Anaconda for Linux

1. ```/home/user/Local/Software/Anaconda/bin/spyder --reset``` (only first time to reset previous possibly configurations).
2. ```spyder``` or if you did not prepend the path: ```/home/user/Local/Software/Anaconda/bin/spyder &```.

## Expand Anaconda with Theano and Keras.

1. ```./pip install git+git://github.com/Theano/Theano.git```.
2. ```./pip install keras```.

## Uninstall Anaconda for Linux

1. To uninstall: ```rm -rf /home/user/Local/Software/Anaconda```.
2. If the installer prepended the path of your Anaconda install location, delete ```/home/user/.bashrc-anaconda.bak```, open the file ```/home/user/.bashrc``` and delete de lines added by Anaconda installer.
3. Optionally, delete with `rm -rf`: ```~/.conda/```, ```~/.continuum/```, ```~/.spyderworkspace```, ```~/.spyder2-py3/```.
