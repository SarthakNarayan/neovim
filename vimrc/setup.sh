#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/SarthakNarayan/neovim/main/vimrc/.vimrc > "$HOME/.vimrc"
mkdir -p ~/.vim/colors
curl -fsSL https://raw.githubusercontent.com/SarthakNarayan/neovim/main/vimrc/gruvbox.vim > "$HOME"/.vim/colors/gruvbox.vim

