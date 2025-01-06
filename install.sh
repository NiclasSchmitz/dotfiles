#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# essential
sudo apt install tmux git curl fzf ripgrep fd-find rsync htop apt-transport-https mpv timeshift screenfetch software-properties-common pdfgrep yt-dlp

# gui
sudo apt install vim-gtk3 xclip celluloid gnome-clocks gnome-shell-pomodoro gimp
#sudo snap install bitwarden discord spotify

# backup
cp ~/.bashrc ~/.bashrc.backup
rm ~/.bashrc

# symlinks
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/bash_aliases ~/.bash_aliases
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/vim ~/.vim
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/dircolors ~/.dircolors

# symlink scripts
ln -s $PWD/scripts/* ~/.local/bin/

mkdir -p ~/.config

# Neovim mkdir -p ~/.config/nvim
ln -s  ${BASEDIR}/config/nvim/init.lua ~/.config/nvim/init.lua

# Vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NVM & NodeJS
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"
source ~/.bashrc
nvm install --lts

# Brave browser
#sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
#echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
#sudo apt update
#sudo apt install brave-browser

# jetbrains font
#cd /tmp
#wget https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip
#unzip JetBrainsMono-2.242.zip
#mkdir /usr/share/fonts/truetype/jetbrains
#sudo cp fonts/ttf/* /usr/share/fonts/truetype/jetbrains
#sudo fc-cache -f -v

# Syncthing
sudo curl -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update
sudo apt install syncthing

# Neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
