# Update local repository
sudo pacman -Syy

# Git
sudo pacman -S git --noconfirm

# Yay
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd .. && rm -rfv yay

# Google chrome
yay -S google-chrome --noconfirm

# Bluetooth
sudo pacman -S bluez blue-utils blueman pulseaudio pulseaudio-bluetooth pavucontrol --noconfirm

# VSCode
cd ~
git clone https://AUR.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin/
makepkg -s
sudo pacman -U visual-studio-code-bin-1.63.2-1-x86_64.pkg.tar.zst
cd ~ && sudo rm -rfv visual-studio-code-bin/

# Ibus bamboo
sudo pacman -S ibus --noconfirm
yay -S ibus-bamboo --noconfirm

# Gwenview for view photo
sudo pacman -S gwenview --noconfirm

# Screenshot with spectacle
sudo pacman -S spectacle --noconfirm

# Office on Linux
# sudo pacman -S libreoffice-still --noconfirm
# yay -S openoffice-bin --noconfirm
sudo yay -S wps-office --noconfirm

# Emoji
sudo pacman -S noto-fonts-emoji --noconfirm

# Peazip
yay -S peazip-gtk2-bin --noconfirm

# zsh & oh-my-zsh
sudo pacman -S zsh --noconfirm
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Nodejs, npm, yarn, nvm
source ~/.zshrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
nvm install --lts
sudo npm install --global yarn
# Fix not found node after closing the terminal
# nvm alias default node_version
# nvm use node_version

# Color picker
yay -S picket --noconfirm


# Video recorder & editor
sudo pacman -S kdenlive --noconfirm

# PDF Reader (Recommend: WPS PDF)
# sudo pacman -S okular --noconfirm

# Photo Editor
sudo pacman -S krita --noconfirm

# Database, DBMS
# DBeaver, Valentina Studio, Beekeeper Studio (Navicat Alternative)
# yay -S beekeeper-studio-bin --noconfirm
# yay -S valentina-studio --noconfirm
sudo pacman -S dbeaver --noconfirm
# Mongodb
yay -S mongodb-bin mongodb-tools-bin robo3t-bin --noconfirm
# SQL server
yay -S mssql-server --noconfirm
# Postgresql
sudo pacman -S postgresql --noconfirm

# Teamviewer
yay -S teamviewer --noconfirm

# Notepad to open txt file
sudo pacman -S notepadqq --noconfirm

# Trash management
sudo pacman -S trash-cli --noconfirm

# Utils
sudo pacman -S xclip --noconfirm

# Update all
yay -Su --noconfirm
yay -Sc --noconfirm