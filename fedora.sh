#Gnome
sudo dnf install @base-x gnome-shell -y

#i3
sudo dnf install i3 -y

#Terminal, File Explorer
sudo dnf install terminator nautilus -y

#Brave
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

#DevTools and Extension Support
sudo dnf install chrome-gnome-shell @development-tools -y

#Atom
sudo rpm --import https://packagecloud.io/AtomEditor/atom/gpgkey
sudo sh -c 'echo -e "[Atom]\nname=Atom Editor\nbaseurl=https://packagecloud.io/AtomEditor/atom/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/AtomEditor/atom/gpgkey" > /etc/yum.repos.d/atom.repo'
sudo dnf repolist
sudo dnf install atom -y -y

#RPM
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install akmod-nvidia -y

#Steam
sudo dnf install steam -y

#Spotify
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client -y -y

#Discord
sudo dnf install discord -y

#Material Shell Launch
gnome-extensions enable material-shell@papyelgringo
sudo dnf install flatpak
flatpak install org.gnome.Extensions -y -y

#Graphical Target
sudo systemctl set-default graphical.target
reboot
