local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
	return
end

local telescope_actions_status, actions = pcall(require, "telescope.actions")
if not telescope_actions_status then
	return
end

local previewers_status, previewers = pcall(require, "telescope.previewers")
if not previewers_status then
	return
end

local sorters_status, sorters = pcall(require, "telescope.sorters")
if not sorters_status then
	return
end

local lga_status, lga_actions = pcall(require, "telescope-live-grep-args.actions")
if not lga_status then
	return
end

telescope.setup({
	extensions = {
		live_grep_args = {
			auto_quoting = true,
			mappings = {
				-- extend mappings
				i = {
					["<C-k>"] = lga_actions.quote_prompt(),
					["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
				},
			},
		},
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
	defaults = {
		layout_config = {
			width = 0.75,
			preview_cutoff = 120,
			horizontal = { mirror = false },
			vertical = { mirror = false },
		},
		find_command = { "rg", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case" },
		prompt_prefix = " ",
		selection_caret = " ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "descending",
		layout_strategy = "horizontal",
		file_sorter = sorters.get_fuzzy_file,
		file_ignore_patterns = {},
		generic_sorter = sorters.get_generic_fuzzy_sorter,
		path_display = {},
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		use_less = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
		file_previewer = previewers.vim_buffer_cat.new,
		grep_previewer = previewers.vim_buffer_vimgrep.new,
		qflist_previewer = previewers.vim_buffer_qflist.new,
		buffer_previewer_maker = previewers.buffer_previewer_maker,
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
				["<esc>"] = actions.close,
				["<CR>"] = actions.select_default + actions.center,
			},
			n = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
				["<q>"] = actions.close,
			},
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("live_grep_args")
