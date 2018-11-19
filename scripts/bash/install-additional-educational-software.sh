# PREREQUISITES

# Install Debian with an Xfce and run 'install-numix-xfce-debian.sh' and 'install-additional-cli-software.sh'.


# 1. INSTALL EDUCATIONAL SOFTWARE

sudo apt-get install -y carmetal geogebra   # MATHS - Dynamic geometry software
sudo apt-get install -y gperiodic           # CHEMISTRY - Periodic table application
sudo apt-get install -y scratch             # PROGRAMMING - Programming environment for ages 8 and up
sudo apt-get install -y octave 				# Numerical computations
sudo apt-get install -y oregano 			# Tool for electronic circuits
# sudo apt-get install -y epoptes-client	# Computer lab management tool
# sudo apt-get install -y wireshark         # Network traffic analyzer


# 2. LOCK PANEL, DESKTOP AND APPAREANCE

# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml
# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml
# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml
# sudo cp ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml

# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
# sudo nano /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

# Change '<channel name="xfce4-panel" ver...' to '<channel name="xfce4-panel" version="1.0" locked="*" unlocked="root">'
# Change '<channel name="xfce4-desktop" ver...' to '<channel name="xfce4-desktop" version="1.0" locked="*" unlocked="root">'
# Change '<channel name="xfwm4" ver...' to '<channel name="xfwm4" version="1.0" locked="*" unlocked="root">'
# Change '<channel name="xsettings" ver...' to '<channel name="xsettings" version="1.0" locked="*" unlocked="root">'


# 3. CONFIGURE AND SET UP

# 4.1. Install last version of LibreOffice
# 4.2. Configure Geany and Gimp as you wish.
# 4.3. Set Chromium to open PDF files by default.
# 4.4. Set Ristretto to open JPG, PNG, GIF files by default.
# 4.5. Set Geany to open text files (plain files, .txt, .sh, .py...) by default.
# 4.6. sudo apt-get purge transmission-gtk transmission-common
# 4.7. Block undesirable websites (https://github.com/StevenBlack/hosts plus your list of hosts)


# 4. OTHER

# 4.1. If you use Xfce, enable autologin: https://wiki.debian.org/LightDM#Enable_autologin
# 4.2. If you have enabled autologin, unlock keyring on startup on Chromium:
#     4.2.1. sudo nano /usr/share/applications/chromium.desktop
#     4.2.2. Exec=/usr/bin/chromium --password-store=basic %U
#     4.2.3. Repeat 4.2.1 and 4.2.3 at /home/usuario/.config/xfce4/panel/
# 4.3. Disable 'Allow Chromium sign-in' and use 'Classic theme'.
# 4.4. Reset the computer, and test Chromium.

# 5. OPTIONAL SOFTWARE

# 1. Install Oracle VM VirtualBox (use quota disk for user folders).
# 2. Install CmapTools (install at /opt, create an direct access, and change the 'Save folder' in Preferences).


# 6. PREVENT MALICIOUS OS ATTACKS

# 6.1. sudo chmod 555 /home/user/Desktop (FUTURE: sudo chmod 555 /home/user - PROBLEMS: cannot reset and lots time to load)
# 6.2. sudo rm ~/.bash_history
# 6.3. Disable 'sudo' on an user account on Debian: deluser username sudo


# 7. CLONE WITH CLONEZILLA
# 
# Resolve problems with NTFS:
# 1. Enter the shell (not Start Clonezilla).
# 2. sudo ntfsfix /dev/sda2
# 3. sudo ntfsfix -d /dev/sda2
# 4. exit
# 5. Remember to activate fsck
