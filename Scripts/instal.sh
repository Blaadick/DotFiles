sudo pacman -Syu
sudo pacman -S hyprpaper wl-clipboard brightnessctl playerctl git grim slurp flatpak nwg-look blueman code nautilus firefox torbrowser-launcher discord steam prismlauncher btop ttf-jetbrains-mono
sudo pacman -Rns dolphin vim htop

flatpak install flathub net.blockbench.Blockbench

sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"

cd /var/lib
sudo git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

yay -S eww hyprpicker jetbrains-toolbox youtube-music-bin aseprite

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish

cd ~/DotFiles
cp -a Configs/* ~/.config
cp -a Pictures/* ~/Pictures
cd

cd ~/.local/share
git clone https://github.com/vinceliuice/Graphite-gtk-theme
cd Graphite-gtk-theme
./install.sh -d ~/.themes -c dark --tweaks black rimless normal -l
cd
