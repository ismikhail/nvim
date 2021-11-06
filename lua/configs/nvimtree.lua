vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_icons = {
    git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
}

require'nvim-tree'.setup {
  auto_close = false,
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

