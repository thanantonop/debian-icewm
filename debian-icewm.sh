# Install packages
sudo apt install packaging-dev build-essential automake autoconf efibootmgr firmware-iwlwifi python3 python3-pip x11-xserver-utils xorg git sudo bpytop vim ranger htop cmus mpv geany meld lightdm lightdm-gtk-greeter-settings openbox icewm rox-filer pcmanfm rxvt-unicode nala xterm feh picom neofetch connman connman-gtk lxpolkit unzip pipewire pipewire-pulse pipewire-jack pipewire-alsa wireplumber pipewire-media-session- libspa-0.2-bluetooth pavucontrol arandr lxappearance flameshot gdebi synaptic lsd bat numlockx openssh-server p7zip-full ufw gufw network-manager magnus firefox-esr chromium libreoffice libreoffice-gtk3 emacs abiword gimp transmission transmission-cli transmission-common transmission-gtk handbrake audacity hexchat gparted rofi timeshift evince filezilla keepassxc inkscape darktable krita kdenlive blueman galculator vlc fontforge i3lock redshift conky-all lm-sensors flatpak alacritty nitrogen l3afpad xfburn mirage celluloid fish audacious acpi acpi-support apt-show-versions cherrytree claws-mail aspell aspell-el aspell-en cups cups-common cups-core-drivers cups-ppdc cups-filters xournal dosbox thunderbird gtk-theme-switch gtk2-engines arc-theme papirus-icon-theme ttf-mscorefonts-installer fonts-noto-color-emoji fonts-crosextra-carlito fonts-crosextra-caladea fonts-powerline fonts-font-awesome fonts-ubuntu fonts-ubuntu-console fonts-liberation2 fonts-terminus -y
sudo apt install ninja-build gettext cmake multitail tree zoxide trash-cli fzf bash-completion ffmpeg default-jdk wget nano locate p7zip p7zip-full unzip dos2unix net-tools ethtool bind9-utils curl  apt-transport-https wireshark -y
sudo apt install libavcodec-extra gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly -y
sudo apt install qemu-system libvirt-daemon-system virt-manager -y
sudo apt install smtube qpdfview streamtuner2 moc irssi newsboat vim-tiny ytfzf rtorrent cdw dc3dd dcfldd e3 ethtool gcc ghostscript gsettings-desktop-schemas gsfonts gsfonts-x11 gtkam guvcview html2text irqbalance iso-codes keyutils libavcodec-extra libgpod-common lp-solve lua-filesystem luckybackup luckybackup-data mpg123 mpg321 myspell-el-gr notify-osd pv rfkill sane-utils simple-scan spawn-fcgi ssl-cert streamripper streamtuner2 system-config-printer system-config-printer-udev unclutter ure uvcdynctrl uvcdynctrl-data wamerican wavpack winff winff-doc xclip xfce-keyboard-shortcuts xfconf psmisc playerctl scrot sysstat xbindkeys -y
sudo apt install meson pkg-config xcb libx11-dev libxft-dev libxinerama-dev libx11-xcb-dev libxcb-res0-dev libimlib2-dev libglib2.0-dev libgtk-3-dev libgcr-3-dev libwebkit2gtk-4.0-dev libssl-dev libsystemd-dev libjpeg-dev libglib2.0-dev libgstreamer1.0-dev liblua5.2-dev libfreetype6-dev libfontconfig1-dev libfribidi-dev libavahi-client-dev libharfbuzz-dev libibus-1.0-dev libx11-dev libxext-dev libxrender-dev libgl1-mesa-dev libopenjp2-7-dev libwebp-dev libgif-dev libtiff5-dev libpoppler-dev libpoppler-cpp-dev libspectre-dev libraw-dev librsvg2-dev libudev-dev libmount-dev libdbus-1-dev libpulse-dev libsndfile1-dev libxcursor-dev libxcomposite-dev libxinerama-dev libxrandr-dev libxtst-dev libxss-dev libgstreamer-plugins-base1.0-dev doxygen libscim-dev libxdamage-dev libwebp-dev libunwind-dev libheif-dev libluajit-5.1-dev libinput-dev check libpam-dev libexif-dev -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.onlyoffice.desktopeditors -y
sudo apt remove ifupdown -y
sudo rm -rf /etc/network/interfaces
sudo apt autoremove -y
sudo apt autopurge -y
sudo apt autoclean -y
sudo systemctl enable NetworkManager
sudo systemctl restart NetworkManager
systemctl --user --now enable wireplumber.service

# Copy configuration files
xdg-user-dirs-update
systemctl --user --now enable wireplumber.service
sudo cp 30-keyboard.conf /etc/X11/xorg.conf.d/
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/
cp Xresources ~/.Xresources
cp picom.conf ~/.config/
cp -R alacritty ~/.config/
cp -R rofi ~/.config/

# Install Fonts
rm -rf ~/.fonts
cd ~/Downloads
rm -rf FiraCode.zip 
rm -rf Meslo.zip 
git clone https://github.com/thanantonop/fonts.git
rm -rf ~/Downloads/fonts/.git
rm -rf ~/.fonts
mv fonts ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.zip
unzip FiraCode.zip -d ~/.fonts
unzip Meslo.zip -d ~/.fonts
rm -rf ~/.fonts/.git
cd ~
