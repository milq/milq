####################################
# SET UP NUMIX ON DEBIAN WITH XFCE #
####################################

# |      THIS SCRIPT IS TESTED CORRECTLY ON      |
# |----------------------------------------------|
# | OS & Desktop Environment | Test | Last test   |
# |--------------------------|------|-------------|
# | Debian 12.4 & Xfce 4.18  | OK   | 11 Jan 2024 |
# | Debian 12.1 & Xfce 4.18  | OK   | 24 Sep 2023 |


# 1. KEEP DEBIAN UP TO DATE

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove


# 2. INSTALL FONTS (version A)

sudo apt-get install -y wget

# Create temporary directory to download fonts
cd ~
rm -rf tmp_fonts
mkdir tmp_fonts
cd tmp_fonts

# Download Arimo fonts
wget https://github.com/google/fonts/raw/main/apache/arimo/Arimo%5Bwght%5D.ttf
wget https://github.com/google/fonts/raw/main/apache/arimo/Arimo-Italic%5Bwght%5D.ttf

# Download Open Sans fonts
wget https://github.com/google/fonts/raw/main/ofl/opensans/OpenSans%5Bwdth,wght%5D.ttf
wget https://github.com/google/fonts/raw/main/ofl/opensans/OpenSans-Italic%5Bwdth,wght%5D.ttf

# Download Lato fonts
wget https://github.com/google/fonts/raw/main/ofl/lato/Lato-Regular.ttf
wget https://github.com/google/fonts/raw/main/ofl/lato/Lato-Bold.ttf
wget https://github.com/google/fonts/raw/main/ofl/lato/Lato-Italic.ttf

# Download Cousine fonts
wget https://github.com/google/fonts/raw/main/apache/cousine/Cousine-Regular.ttf
wget https://github.com/google/fonts/raw/main/apache/cousine/Cousine-Italic.ttf
wget https://github.com/google/fonts/raw/main/apache/cousine/Cousine-Bold.ttf
wget https://github.com/google/fonts/raw/main/apache/cousine/Cousine-BoldItalic.ttf

# Download Fira fonts
wget https://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Regular.ttf
wget https://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Medium.ttf
wget https://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Bold.ttf

# Move to fonts directory and organize fonts into subdirectories
cd /usr/local/share/fonts
sudo mkdir -p Arimo Cousine Fira Lato OpenSans

# Move fonts to their respective directories
sudo mv ~/tmp_fonts/Arimo*.ttf Arimo/
sudo mv ~/tmp_fonts/Cousine*.ttf Cousine/
sudo mv ~/tmp_fonts/FiraMono*.ttf Fira/
sudo mv ~/tmp_fonts/Lato*.ttf Lato/
sudo mv ~/tmp_fonts/OpenSans*.ttf OpenSans/

rm -rf ~/tmp_fonts

# 2. INSTALL FONTS (version B)

# Uncomment the section below to install the fonts directly from Debian repositories.
# However, personally, I prefer the ones from Google Fonts, which have slight variations.

# sudo apt-get install -y fonts-firacode
# sudo apt-get install -y fonts-lato
# sudo apt-get install -y fonts-open-sans


# 3. INSTALL NUMIX THEME AND NUMIX ICONS

sudo apt-get install -y numix-gtk-theme
sudo apt-get install -y numix-icon-theme-circle


# 4. DOWNLOAD A DEBIAN DESKTOP BACKGROUND

sudo mkdir -p /usr/local/share/images
cd /usr/local/share/images

sudo apt-get install -y wget
sudo wget http://wallpapercave.com/wp/uB1CL6W.png -O debian_bg.png


# 5. CONFIG NUMIX'S THEME, WM, AND ICONS IN XFCE

xfconf-query -c xsettings -p /Net/ThemeName -s 'Numix'
xfconf-query -c xfwm4 -p /general/theme -s 'Numix'
xfconf-query -c xsettings -p /Net/IconThemeName -s 'Numix-Circle'

xfconf-query -c xfwm4 -p /general/button_layout -s 'O|HMC'
xfconf-query -c xfwm4 -p /general/title_font -s 'Open Sans Semi-Bold 12'
xfconf-query -c xfwm4 -p /general/workspace_count -s 1

xfconf-query -c xsettings -p /Gtk/FontName -s 'Open Sans Regular 12'

xfconf-query -n -c xsettings -p /Gtk/ColorScheme -t string -s 'selected_bg_color:#204a87;selected_fg_color:#eeeeee;'

xfconf-query -c xsettings -p /Xft/Antialias -s 1
xfconf-query -c xsettings -p /Xft/Hinting -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -s 'hintfull'
xfconf-query -c xsettings -p /Xft/RGBA -s 'rgb'

xfconf-query -n -c xsettings -p /Xft/DPI -t int -s -1

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/image-style -s 5
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s '/usr/local/share/images/debian_bg.png'

xfconf-query -c thunar -p /misc-exec-shell-scripts-by-default -n -t bool -s true

xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-filesystem -n -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-home -n -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-removable -n -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-trash -n -t bool -s false

# 6. CONFIG TERMINAL APPEARANCE

rm -rf ~/.config/xfce4/terminal
mkdir ~/.config/xfce4/terminal

cat > ~/.config/xfce4/terminal/terminalrc <<EOF
[Configuration]
FontName=Fira Mono Regular 12
ColorBackground=#002b36
ColorForeground=#d4e1e2
ColorCursor=#93a1a1
TabActivityColor=#dc322f
ColorPalette=#073642;#dc322f;#859900;#b58900;#268bd2;#d33682;#2aa198;#eee8d5;#002b36;#cb4b16;#586e75;#657b83;#5e858b;#6c71c4;#93a1a1;#fdf6e3
EOF

# 7. INSTALL ADDITIONAL SOFTWARE

sudo apt-get -y install xfce4-whiskermenu-plugin
sudo apt-get -y install xfce4-battery-plugin
sudo apt-get -y install xfce4-pulseaudio-plugin
sudo apt-get -y install xfce4-datetime-plugin
# sudo apt-get install xfce4-power-manager-plugins

sudo apt-get -y install chromium
sudo apt-get -y install geany


# 8. CONFIG PANEL

sudo apt-get -y install psmisc

rm -rf ~/.config/xfce4/panel
mkdir ~/.config/xfce4/panel

cat > ~/.config/xfce4/panel/datetime-10.rc <<EOL
layout=3
date_font=Open Sans 12
time_font=Open Sans 12
date_format=%Y-%m-%d
time_format=%H:%M
EOL

cat > ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml <<EOL
<?xml version='1.0' encoding='UTF-8'?>
<channel name='xfce4-panel' version='1.0'>
  <property name='configver' type='int' value='2'/>
  <property name='panels' type='array'>
    <value type='int' value='1'/>
    <property name='panel-1' type='empty'>
      <property name='position' type='string' value='p=8;x=0;y=0'/>
      <property name='length' type='uint' value='100'/>
      <property name='position-locked' type='bool' value='true'/>
      <property name='size' type='uint' value='32'/>
      <property name='plugin-ids' type='array'>
        <value type='int' value='1'/>
        <value type='int' value='2'/>
        <value type='int' value='3'/>
        <value type='int' value='4'/>
        <value type='int' value='5'/>
        <value type='int' value='6'/>
        <value type='int' value='7'/>
        <value type='int' value='8'/>
        <value type='int' value='9'/>
        <value type='int' value='10'/>
        <value type='int' value='11'/>
        <value type='int' value='12'/>
        <value type='int' value='13'/>
      </property>
    </property>
  </property>
  <property name='plugins' type='empty'>
    <property name='plugin-1' type='string' value='whiskermenu' />
    <property name='plugin-2' type='string' value='launcher'>
      <property name='items' type='array'>
        <value type='string' value='chromium.desktop'/>
      </property>
    </property>
    <property name='plugin-3' type='string' value='launcher'>
      <property name='items' type='array'>
        <value type='string' value='geany.desktop'/>
      </property>
    </property>
    <property name='plugin-4' type='string' value='launcher'>
      <property name='items' type='array'>
        <value type='string' value='xfce4-terminal.desktop'/>
      </property>
    </property>
    <property name='plugin-5' type='string' value='launcher'>
      <property name='items' type='array'>
        <value type='string' value='xfce4-file-manager.desktop'/>      
      </property>
    </property>
    <property name='plugin-6' type='string' value='tasklist'>
      <property name='sort-order' type='uint' value='4'/>
    </property>
    <property name='plugin-7' type='string' value='separator'>
      <property name='expand' type='bool' value='true'/>
      <property name='style' type='uint' value='0'/>
    </property>
    <property name='plugin-8' type='string' value='battery' />
    <property name='plugin-9' type='string' value='systray'>
      <property name='names-visible' type='array'>
        <value type='string' value='networkmanager applet'/>
        <value type='string' value='thunar'/>
      </property>
    </property>
    <property name='plugin-10' type='string' value='pulseaudio'>
      <property name='enable-keyboard-shortcuts' type='bool' value='true'/>
    </property>
    <property name='plugin-11' type='string' value='datetime'/>
    <property name='plugin-12' type='string' value='thunar-tpa'/>
    <property name='plugin-13' type='string' value='showdesktop'/>
  </property>
</channel>
EOL

killall xfconfd
xfce4-panel -r
