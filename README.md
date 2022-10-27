# nvim

## Requirements
1.`brew install neovim ripgrep tree-sitter luajit fd`

## Setup
1. `mkdir ~/.config && cd ~/.config`
2. Clone this repo into your current directory

## Create alias
`ln -s /usr/local/bin/nvim /usr/local/bin/vim`

## Setup `vim` to use the same config
1. `ln -s ~/.config/nvim ~/.vim`
2. `ln -s .config/nvim/init.vim .vimrc`

## Install plugins
1. Run `nvim`
2. Install plugins `:PackerSync` and exit
3. Run `nvim` again
4. Install language servers, linters and formatters `:Mason`
