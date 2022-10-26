local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	ensure_installed = {
		"json",
		"lua",
		"html",
		"ruby",
		"javascript",
		"typescript",
		"tsx",
		"css",
		"yaml",
		"markdown",
		"bash",
		"vim",
		"gitignore",
		"dockerfile",
	},
	highlight = { enable = true },
	indent = { enable = true },
	autotag = { enable = true },
  auto_install = true,
	context_commentstring = {
		enable = true,
	},
})
