local wk_status, wk = pcall(require, "which-key")
if not wk_status then
	return
end

local terminal_status, terminal = pcall(require, "toggleterm.terminal")
if not terminal_status then
	return
end

local Terminal = terminal.Terminal

local toggle_float = function()
	local float = Terminal:new({ direction = "float" })
	return float:toggle()
end

local toggle_lazygit = function()
	local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
	return lazygit:toggle()
end

local mappings = {
	q = { ":q<cr>", "Quit" },
	Q = { ":qa<cr>", "Exit" },
	w = { ":w<cr>", "Save" },
	x = { ":bw<cr>", "Close" },
	C = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
	l = {
		name = "LSP",
		a = { "<cmd>Lspsaga code_action<CR>", "Code actions" },
		b = { "<cmd>Lspsaga show_buf_diagnostics<CR>", "Show buffer diagnostics" },
		d = { "<cmd>Lspsaga goto_definition<CR>", "Go to definition" },
		e = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Show line diagnostics" },
		f = { "<cmd>lua vim.lsp.buf.format { async = true }<CR>", "Format" },
		h = { "<cmd>Lspsaga lsp_finder<CR>", "Find definition" },
		i = { ":LspInfo<cr>", "Connected Language Servers" },
		I = { "<cmd>Lspsaga incoming_calls<CR>", "Hover" },
		j = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "Go to next diagnostic" },
		k = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Go to previous diagnostic" },
		K = { "<cmd>Lspsaga hover_doc<CR>", "Hover" },
		O = { "<cmd>Lspsaga outgoing_calls<CR>", "Hover" },
		R = { "<cmd>Lspsaga rename<CR>", "Rename" },
		o = { "<cmd>Lspsaga outline<CR>", "Lspsaga outline" },
	},
	g = {
		name = "Git",
		j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
		l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
		u = {
			"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
			"Undo Stage Hunk",
		},
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		C = {
			"<cmd>Telescope git_bcommits<cr>",
			"Checkout commit(for current file)",
		},
		d = { ":Gvdiffsplit<cr>", "Git Diff" },
	},
	h = {
		name = "Harpoon",
		h = { ':lua require("harpoon.ui").toggle_quick_menu()<cr>', "Menu" },
		a = { ':lua require("harpoon.mark").add_file()<cr>', "Add file" },
	},
	t = {
		t = { ":ToggleTerm<cr>", "Split Below" },
		f = { toggle_float, "Floating Terminal" },
		l = { toggle_lazygit, "LazyGit" },
	},
}

local opts = {
	prefix = "<leader>",
}

wk.register(mappings, opts)
