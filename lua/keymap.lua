vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = false }
local opt_silent = { noremap = true, silent = true }

-- better navigation
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-l>", "<C-w>l", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)

-- esc
map("i", "jk", "<ESC>", opt)
map("i", "kj", "<ESC>", opt)

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<cr>", opt_silent)

-- telescope
map("n", "<leader>f", ":Telescope find_files<cr>", opt_silent)
map("n", "<leader>s", ":Telescope live_grep<cr>", opt_silent)
map("n", "<leader>b", ":Telescope buffers<cr>", opt_silent)
map("n", "<leader>B", ":Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<cr>", opt_silent)
map("n", "<leader>S", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opt_silent)

-- bufferbar
map("n", "<S-l>", ":BufferLineCycleNext<cr>", opt_silent)
map("n", "<S-h>", ":BufferLineCyclePrev<cr>", opt_silent)

-- selection
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- yank
map("n", "Y", "y$", opt_silent)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

-- LSP
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opt)
map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opt)
map("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opt)

-- maximizer
map("n", "<leader>m", ":MaximizerToggle<CR>", opt)

vim.keymap.set("n", "<leader>p", function()
  require("telescope").extensions.monorepo.monorepo()
end)
vim.keymap.set("n", "<leader>n", function()
  require("monorepo").toggle_project()
end)
