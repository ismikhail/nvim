-- vim.g.nvim_tree_show_icons = {
--   git = 1,
--   folders = 0,
--   files = 1,
--   folder_arrows = 1
-- }

vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_icons = {
  icons = {
    default = "",
    symlink = "",
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
}

require'nvim-tree'.setup {
  auto_close = true,
  view = {
    allow_resize = true,
    side = 'right',
    width = 70
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
  ignore = { ".git", "node_modules", ".cache", ".next", ".vscode" },
  update_focused_file = {
    enable = true
  }
}

