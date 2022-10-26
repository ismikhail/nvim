vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('general')
require('plugins')
require('theme')
require('keymap')
require('autorun')

require('configs.treesitter')
require('configs.lualine')
require('configs.bufferline')
require('configs.nvimtree')
require('configs.telescope')
require('configs.whichkey')
require('configs.autopairs')
require('configs.gitsigns')
require('configs.term')
require('configs.nullls')
require('configs.lsp.nvim-cmp')
require('configs.lsp.mason')
require('configs.lsp.lspconfig')
require('configs.lsp.diagnostics')

