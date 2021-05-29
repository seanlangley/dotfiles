#!/usr/bin/env bash

curl -s https://raw.githubusercontent.com/seanlangley/dotfiles/main/.bashrc -o ~/.bash_aliases
curl -s https://raw.githubusercontent.com/seanlangley/dotfiles/main/.vimrc -o ~/.vimrc

if [ ! -e ~/.bashrc ]; then
    touch ~/.bashrc
fi

if ! grep "^source ~/.bash_aliases$" ~/.bashrc; then
    echo "source ~/.bash_aliases" >> ~/.bashrc
fi

source ~/.bashrc

if [ ! -e ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim -c "PluginInstall" -c "q" -c "q"
