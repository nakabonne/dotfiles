#!/bin/sh
mkdir ~/.config/nvim
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/init.vim ~/.ideavimrc
ln -sf ~/dotfiles/init.vim ~/.vimrc

mkdir ~/.config/dein
ln -sf ~/dotfiles/plugins.toml ~/.config/dein/plugins.toml

ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

mkdir ~/.cargo
ln -sf ~/dotfiles/cargo.toml ~/.cargo/config

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.bash_profile ~/.profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc

ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
