## Install Anaconda for Linux

1. Download the installer for Linux Anaconda at: [continuum.io/downloads](http://continuum.io/downloads).
2. In a terminal console, execute: ```bash name_of_the_installer.sh``` to install Anaconda.
3. Specify one location to install Anaconda. E.g.: ```/home/user/Local/Software/Anaconda```.

```/home/user/Local/Software/Anaconda/bin/spyder --reset```

## Uninstall Anaconda for Linux

1. To uninstall: ```rm -rf /home/user/Local/Software/Anaconda```.
2. Open the file ```/home/user/.bashrc``` and delete de lines added by Anaconda installer.
3. Also delete: ```rm /home/user/.bashrc-anaconda.bak```.
