#!/bin/bash

# essentials
sudo apt install xclip tmux git vim-gtk3 curl fzf ripgrep rsync htop

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nvm
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# backup
cp ~/.bashrc ~/.bashrc.backup

# create symlinks
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/bash_aliases ~/.bash_aliases
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/vim ~/.vim
ln -s $PWD/tmux.conf ~/.tmux.conf
