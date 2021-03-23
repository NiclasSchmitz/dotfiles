#!/bin/bash

# essential software
sudo apt install xclip tmux git vim-gtk3 curl fzf ripgrep rsync

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create symlinks
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/bash_aliases ~/.bash_aliases
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/coc-settings.json ~/.vim/coc-settings.json
#ln -s $PWD/zshrc ~/.zshrc
#ln -s $PWD/zshrc.local ~/.zshrc.local
