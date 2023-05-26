sudo dnf copr enable th3-s4lm0n/leftwm -y 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install leftwm polybar nnn picom rofi alacritty neovim code -y -y
sudo dnf remove xfce4-terminal nano -y
mkdir ~/.config/leftwm ~/.config/leftwm/themes ~/.config/autostart
mv config.ron ~/.config/leftwm/
mv polybar ~/.config/leftwm/themes
ln -s ~/.config/leftwm/themes/polybar ~/.config/leftwm/themes/current
mv up.desktop ~/.config/autostart
reboot
