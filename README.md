# nvim-config

## Requirements
neovim, fzf

## Setup
1. `mkdir ~/.config && cd ~/.config`
2. Clone this repo into your current directory

## Setup `vim` to use the same config
1. `ln -s ~/.config/nvim ~/.vim`
2. `ln -s .config/nvim/init.vim .vimrc`

## Install plugins
1. Run `nvim`
2. `:PlugInstall`

## Install coc extensions
`:CocInstall coc-json coc-tsserver coc-eslint coc-prettier`
