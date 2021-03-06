#RPM
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y

#DevTools and Extension Support
sudo dnf install @development-tools -y

#xorg
sudo dnf install libx11 xrandr xorg-server libxinerama -y

#leftwm
sudo dnf copr enable atim/leftwm -y && sudo dnf install leftwm polybar -y

#zsh
sudo dnf install zsh util-linux-user -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
chsh -s /usr/bin/zsh

#base applications
sudo dnf install alacritty nnn micro nitrogen neofetch picom snapd flameshot rofi glances lm_sensors -y

#dnf-plugins-core
sudo dnf install dnf-plugins-core -y

#Brave
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

#Steam
sudo dnf install steam -y

#Spotify
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install spotify -y

#Discord
sudo dnf install discord -y

sudo dnf install sddm
sudo systemctl enable sddm
sudo systemctl set-default graphical.target
reboot
