#!/bin/sh
mkdir ~/.config/nvim
ln -sf ~/dotfiles/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/init.vim ~/.ideavimrc
ln -sf ~/dotfiles/init.vim ~/.vimrc

ln -sf ~/dotfiles/vscode.json ~/Library/Application\ Support/Code/User/settings.json

mkdir ~/.config/dein
ln -sf ~/dotfiles/plugins.toml ~/.config/dein/plugins.toml

ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

mkdir ~/.cargo
ln -sf ~/dotfiles/cargo.toml ~/.cargo/config

# TODO: 自動化
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
