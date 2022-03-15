# nvim

## Requirements
1.`brew install neovim ripgrep tree-sitter luajit fd`
2. Install language serves
```
npm i -g vscode-langservers-extracted typescript-language-server eslint
```

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
2. `:PackerSync`
