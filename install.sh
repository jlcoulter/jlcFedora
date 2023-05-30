sudo dnf copr enable th3-s4lm0n/leftwm -y 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install leftwm polybar nnn picom rofi alacritty neovim code flatpak go python zsh -y -y
sudo dnf remove xfce4-terminal nano -y
mkdir ~/.config/leftwm ~/.config/leftwm/themes ~/.config/autostart
mv config.ron ~/.config/leftwm/
mv polybar ~/.config/leftwm/themes
ln -s ~/.config/leftwm/themes/polybar ~/.config/leftwm/themes/current
mv up.desktop ~/.config/autostart
cd ~/git/
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
reboot
