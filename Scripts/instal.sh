sudo pacman -Syu
sudo pacman -S fish fastfetch neovim github-cli eww hyprpaper wl-clipboard xdg-desktop-portal-hyprland brightnessctl playerctl git grim slurp flatpak p7zip nwg-look loupe blueman code nautilus firefox torbrowser-launcher steam qbittorrent prismlauncher btop ttf-jetbrains-mono cups cups-pdf gutenprint
sudo pacman -Rns dolphin vim htop

flatpak install flathub net.blockbench.Blockbench

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

yay -S eww hyprlock hyprpicker jetbrains-toolbox vesktop youtube-music-bin aseprite logmein-hamachi

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish

cd ~/DotFiles
cp -a Configs/* ~/.config
cp -a Icons/* ~/.icons
cp -a Pictures/* ~/Pictures
mkdir ~/Scripts
cp -a Scripts/* ~/Scripts
cd

cd ~/.local/share
git clone https://github.com/vinceliuice/Graphite-gtk-theme
cd Graphite-gtk-theme
./install.sh -d ~/.themes -c dark --tweaks black rimless normal -l
cd
