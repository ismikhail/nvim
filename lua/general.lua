vim.opt.number = true
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.hidden = true
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.pumheight = 10
vim.opt.cmdheight = 2
vim.opt.mouse = 'a'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.conceallevel = 0
vim.opt.showtabline = 2
vim.opt.showmode = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.clipboard = 'unnamedplus'
vim.opt.hlsearch = false
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.smartindent = true
vim.opt.signcolumn = 'yes:1'
vim.opt.colorcolumn = '120'
vim.opt.list = true
-- vim.opt.iskeyword = '+=-'

-- word = abc-gdf-asd

vim.cmd[[ set iskeyword+=-]]
vim.cmd[[set showbreak=↪\ ]]
vim.cmd[[set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨]]
vim.cmd[[
  set nocompatible
  filetype plugin on
]]

vim.cmd[[hi DiffAdd guifg=NONE guibg=#4b5632]]

