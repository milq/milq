rm -rf ~/.config/xfce4/xfconf
mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml

wget https://raw.githubusercontent.com/milq/milq/master/scripts/bash/config/xfce4-panel.xml -P ~/.config/xfce4/xfconf/xfce-perchannel-xml

rm -rf ~/.config/xfce4/panel
mkdir ~/.config/xfce4/panel

mkdir ~/.config/xfce4/panel/launcher-2
wget https://raw.githubusercontent.com/milq/milq/master/scripts/bash/config/chromium.desktop -P ~/.config/xfce4/panel/launcher-2

mkdir ~/.config/xfce4/panel/launcher-3
wget https://raw.githubusercontent.com/milq/milq/master/scripts/bash/config/geany.desktop -P ~/.config/xfce4/panel/launcher-3

mkdir ~/.config/xfce4/panel/launcher-4
wget https://raw.githubusercontent.com/milq/milq/master/scripts/bash/config/terminal.desktop -P ~/.config/xfce4/panel/launcher-4

mkdir ~/.config/xfce4/panel/launcher-5
wget https://raw.githubusercontent.com/milq/milq/master/scripts/bash/config/file_manager.desktop -P ~/.config/xfce4/panel/launcher-5

killall xfconfd
xfce4-panel -r
