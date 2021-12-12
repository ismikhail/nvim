vim.wo.number = true
vim.wo.wrap = false
vim.wo.relativenumber = true
vim.o.hidden = true
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.pumheight = 10
vim.o.cmdheight = 2
vim.o.mouse = 'a'
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.clipboard = 'unnamedplus'
vim.o.hlsearch = false
vim.o.cursorline = true
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.opt.termguicolors = true
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.cmd[[set colorcolumn=120]]
vim.cmd[[set showbreak=↪\ ]]
vim.cmd[[set list]]
vim.cmd[[set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨]]
vim.cmd[[
  set nocompatible
  filetype plugin on
]]

vim.cmd[[hi DiffAdd guifg=NONE guibg=#4b5632]]

vim.cmd([[
  autocmd CursorHold <buffer> lua require('configs.lsp.diagnostics').show_line_diagnostics()
]])

