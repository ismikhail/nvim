local theme = "nightfox"

local init_gruvbox = function()
	vim.g.gruvbox_material_background = "hard"
	vim.g.gruvbox_material_palette = "original"
	vim.g.gruvbox_material_diagnostic_line_highlight = 1
	vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
	vim.g.gruvbox_material_statusline_style = "original"

	local status, _ = pcall(vim.cmd, "colorscheme gruvbox-material")
end

local init_nightfox = function()
  vim.cmd("colorscheme nordfox")
end

local init_ayu = function()
	local status, ayu = pcall(require, "ayu")
	if not status then
		return
	end

	ayu.setup({
		mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
	})
	ayu.colorscheme()
end

local init_github = function()
	local status, gh = pcall(require, "github-theme")
	if not status then
		return
	end

	gh.setup()
end

local init_vscode = function()
	local status, vscode = pcall(require, "vscode")
	if not status then
		return
	end

	vscode.setup()
end

local init_onedark = function()
	local status, onedark = pcall(require, "onedark")
	if not status then
		return
	end

	onedark.setup({
		style = "warm", -- dark, darker, cool, deep, warm, warmer
	})
	onedark.load()
end

local init_catppuccin = function()
	local status, catppuccin = pcall(require, "catppuccin")
	if not status then
		return
	end

	vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
	catppuccin.setup()
	vim.cmd([[colorscheme catppuccin]])
end

local setup = function()
	if theme == "gruvbox" then
		init_gruvbox()
	elseif theme == "onedark" then -- broken
		init_onedark()
	elseif theme == "vscode" then -- broken
		init_vscode()
	elseif theme == "github" then
		init_github()
	elseif theme == "ayu" then
		init_ayu()
	elseif theme == "catppuccin" then
		init_catppuccin()
	elseif theme == "nightfox" then
		init_nightfox()
	end
end

setup()

