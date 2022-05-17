#Gnome
sudo dnf install @base-x gnome-shell gnome-disk-utility npm -y

#Terminal, File Explorer
sudo dnf install alacritty terminator fish nautilus pcmanfm firefox vim nitrogen neofetch awesome dmenu polkit picom -y

#dnf-plugins-core
sudo dnf install dnf-plugins-core -y

#Brave
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

#DevTools and Extension Support
sudo dnf install chrome-gnome-shell @development-tools -y

#Sublime with Git
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-text sublime-merge

#Steam
sudo dnf install steam -y

#Gimp
sudo dnf install gimp -y

#RawTherapee
sudo dnf install rawtherapee -y

#KDENlive
sudo dnf install kdenlive -y

#Spotify
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client -y -y

#Discord
sudo dnf install discord -y

#Stacer
sudo dnf install stacer -y

#Graphical Target
sudo systemctl set-default graphical.target
reboot

#Material Shell
git clone https://github.com/material-shell/material-shell.git && cd material-shell && make install
sudo dnf install flatpak
flatpak install org.gnome.Extensions -y -y

#Material Shell Launch
gnome-extensions enable material-shell@papyelgringo

#Edit dnf
sudo vim /etc/dnf/dnf.conf
{
  #Add new lines
  max_parallel_downloads=10
  fastestmirror=True
}

#Edit /etc/default/grub
sudo vim /etc/default/grub
GRUB_TIMEOUT=2
GRUB_TIMEOUT_STYLE=hidden

#Update /boot/grub2/grub/cfg
sudo su
grub2-mkconfig -o /boot/grub2/grub.cfg

#Chrome
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y -y
