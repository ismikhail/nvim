vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.api.nvim_set_keymap

-- better navigation
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

-- esc
map('i', 'jk', '<ESC>', { noremap = true, silent = false})
map('i', 'kj', '<ESC>', { noremap = true, silent = false})

-- nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<cr>', { noremap = true, silent = true })

-- telescope
map('n', '<leader>f', ':Telescope find_files<cr>', { noremap = true, silent = true })
map('n', '<leader>s', ':Telescope live_grep<cr>', { noremap = true, silent = true })
map('n', '<leader>b', ':Telescope buffers<cr>', { noremap = true, silent = true })

-- bufferbar
map('n', '<S-l>', ':BufferLineCycleNext<cr>', { noremap = true, silent = true })
map('n', '<S-h>', ':BufferLineCyclePrev<cr>', { noremap = true, silent = true })

-- selection
map('v', '<', '<gv', { noremap = true, silent = false })
map('v', '>', '>gv', { noremap = true, silent = false })

-- yank
map('n', 'Y', 'y$', { noremap = true, silent = true })

-- commentary
map('n', '<leader>/', ':Commentary<cr>', { noremap = true, silent = false })
map('v', '<leader>/', ':Commentary<cr>', { noremap = true, silent = false })

-- Resize with arrows
map('n', '<C-Up>', ':resize -2<CR>', { noremap = true, silent = false } )
map('n', '<C-Down>', ':resize +2<CR>', { noremap = true, silent = false } )
map('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = false } )
map('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = false } )

-- LSP
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = false })
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = false })
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>', { noremap = true, silent = false })
map('n', 'gI', ':lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = false })
map('n', 'gs', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = false })

