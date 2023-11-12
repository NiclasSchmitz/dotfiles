# dotfiles

## zsh

```sh
sudo apt install -y zsh
chsh -s /usr/bin/zsh
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/zsh-custom $HOME/.zsh-custom
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
```
