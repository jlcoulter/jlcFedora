#Gnome
sudo dnf install @base-x gnome-shell gnome-disk-utility npm -y

#Terminal, File Explorer
sudo dnf install alacritty fish nautilus vim nitrogen neofetch stacer snapd -y

#dnf-plugins-core
sudo dnf install dnf-plugins-core -y

#Brave
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

#DevTools and Extension Support
sudo dnf install @development-tools -y

#VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
sudo dnf install code -y

#Steam
sudo dnf install steam -y

#Spotify
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install spotify

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
