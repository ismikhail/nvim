local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  return
end

nvim_tree.setup({
	renderer = {
		highlight_opened_files = "all",
		icons = {
			webdev_colors = true,
			show = {
				git = true,
				folder = true,
				file = true,
				folder_arrow = false,
			},
			glyphs = {
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					deleted = "",
					untracked = "U",
					ignored = "◌",
				},
				folder = {
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					-- default = "",
					-- open = "",
					-- empty = "",
					-- empty_open = "",
					symlink = "",
				},
			},
		},
	},
	view = {
		side = "right",
		width = 45,
		adaptive_size = true,
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	filters = {
		dotfiles = false,
	},
	update_focused_file = {
		enable = true,
	},
})
