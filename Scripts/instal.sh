./update.sh
sudo pacman -S hyprpaper wl-clipboard brightnessctl git grim slurp nwg-look blueman code nautilus firefox torbrowser-launcher discord steam prismlauncher btop ttf-jetbrains-mono
sudo pacman -Rns dolphin vim htop

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

yay -S eww jetbrains-toolbox youtube-music-bin

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish
