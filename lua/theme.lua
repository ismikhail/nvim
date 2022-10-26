vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_palette = 'original'
vim.g.gruvbox_material_diagnostic_line_highlight = 1
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_statusline_style = 'original'

local status, _ = pcall(vim.cmd, 'colorscheme gruvbox-material')

-- require('vscode').setup {}

-- vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
-- require("catppuccin").setup()
-- vim.cmd [[colorscheme catppuccin]]

-- require('onedark').setup {
--     style = 'warm' -- dark, darker, cool, deep, warm, warmer
-- }
-- require('onedark').load()
