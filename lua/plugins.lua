local fn = vim.fn
local packer = require('packer')
local util = require('packer.util')
local packer_compiled_path = fn.stdpath('config')..'/plugin/packer_compiled.lua'

packer.init({
  compile_path = packer_compiled_path,
  display = {
    open_fn = function()
      return util.float({
        border = 'single', height = math.ceil(vim.o.lines * 0.5)
      })
    end
  }
})

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'sainnhe/gruvbox-material'
  use 'navarasu/onedark.nvim'
  use 'tpope/vim-commentary'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'folke/which-key.nvim',
    config = function()
      require("which-key").setup {}
    end
  }
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  -- LSP and Autocomplete
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Diagnostics
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'

  -- Git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use 'sindrets/diffview.nvim'
  use 'junegunn/gv.vim'

  -- File navigation
  use 'ThePrimeagen/harpoon'

  -- Display startup times
  use 'dstein64/vim-startuptime'
end)

