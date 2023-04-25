local status, packer = pcall(require, "packer")
if not status then
	return
end

local util_status, util = pcall(require, "packer.util")
if not util_status then
	return
end

local fn = vim.fn
local packer_compiled_path = fn.stdpath("config") .. "/plugin/packer_compiled.lua"

packer.init({
	compile_path = packer_compiled_path,
	display = {
		open_fn = function()
			return util.float({
				border = "single",
				height = math.ceil(vim.o.lines * 0.5),
			})
		end,
	},
})

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	-- themes
	use("sainnhe/gruvbox-material")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("Mofiqul/vscode.nvim")
	use("Shatur/neovim-ayu")
	use("projekt0n/github-nvim-theme")
	use("EdenEast/nightfox.nvim")
	use("navarasu/onedark.nvim")
	use("kaiuri/nvim-juliana")

	-- essential
	use("szw/vim-maximizer")
	use("tpope/vim-surround")
	use("kyazdani42/nvim-web-devicons")
	use("tpope/vim-commentary")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	-- Autocomplete
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")

	-- snippets
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	-- managing &b installing lsp servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("lspsaga").setup({})
		end,
		requires = { { "nvim-tree/nvim-web-devicons" } },
	})
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind-nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"akinsho/bufferline.nvim",
		tag = "v3.*",
		requires = "nvim-tree/nvim-web-devicons",
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})
	use("windwp/nvim-ts-autotag")
	use("windwp/nvim-autopairs")

	-- Diagnostics & formatting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Git
	use("tpope/vim-fugitive")
	use("lewis6991/gitsigns.nvim")
	use("junegunn/gv.vim")

	-- File navigation
	use("ThePrimeagen/harpoon")

	-- Display startup times
	use("dstein64/vim-startuptime")

	use("akinsho/toggleterm.nvim")

	use("vimwiki/vimwiki")

	use({
		"imNel/monorepo.nvim",
		config = function()
			require("monorepo").setup({})
		end,
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		dev = true,
	})
end)
