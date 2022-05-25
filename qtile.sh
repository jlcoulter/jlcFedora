#RPM
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y

#DevTools and Extension Support
sudo dnf install @development-tools -y

#Qtile
sudo dnf copr enable frostyx/qtile -y
sudo dnf install qtile qtile-extras -y

#Terminal, File Explorer
sudo dnf install alacritty thunar micro nitrogen neofetch picom stacer snapd flameshot rofi glances lm_sensors -y

#dnf-plugins-core
sudo dnf install dnf-plugins-core -y

#Brave
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

#Steam
sudo dnf install steam -y

#Gimp
sudo dnf install gimp -y

#RawTherapee
sudo dnf install rawtherapee -y

#KDENlive
sudo dnf install kdenlive -y

#Spotify
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install spotify -y

#Discord
sudo dnf install discord -y
