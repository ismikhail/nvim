-- ayu, gruvbox, github, onedark, catppuccin, vscode, monokai
local theme = "monokai"

local function init_gruvbox()
	vim.g.gruvbox_material_background = "hard"
	vim.g.gruvbox_material_foreground = "original"
	vim.g.gruvbox_material_diagnostic_line_highlight = 1
	vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
	vim.g.gruvbox_material_statusline_style = "original"

	vim.cmd("colorscheme gruvbox-material")
end

local function init_monokai()
	local status, monokai = pcall(require, "monokai-pro")
	if not status then
		return
	end

	monokai.setup({
		background_clear = {
			"telescope",
		},
	})
	vim.cmd("colorscheme monokai-pro")
end

local function init_vscode()
	local status, vscode = pcall(require, "vscode")
	if not status then
		return
	end

	vscode.setup()
	vscode.load()
end
local function init_ayu()
	local status, ayu = pcall(require, "ayu")
	if not status then
		return
	end

	ayu.setup({
		mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
	})
	ayu.colorscheme()
end

local function init_github()
	local status, gh = pcall(require, "github-theme")
	if not status then
		return
	end

	gh.setup()
	vim.cmd("colorscheme github_dark")
end

local function init_onedark()
	local status, onedark = pcall(require, "onedark")
	if not status then
		return
	end

	onedark.setup({
		style = "darker", -- dark, darker, cool, deep, warm, warmer
	})
	onedark.load()
end

local function init_catppuccin()
	local status = pcall(require, "catppuccin")
	if not status then
		return
	end

	-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
	vim.cmd("colorscheme catppuccin-macchiato")
end

local function setup()
	if theme == "gruvbox" then
		init_gruvbox()
	elseif theme == "monokai" then -- broken
		init_monokai()
	elseif theme == "onedark" then -- broken
		init_onedark()
	elseif theme == "github" then
		init_github()
	elseif theme == "ayu" then
		init_ayu()
	elseif theme == "catppuccin" then
		init_catppuccin()
	elseif theme == "vscode" then
		init_vscode()
	end
end

setup()
