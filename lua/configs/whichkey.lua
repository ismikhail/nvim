local wk = require'which-key'

local mappings = {
  q = { ':q<cr>', 'Quit' },
  Q = { ':wq<cr>', 'Save & Quit' },
  w = { ':w<cr>', 'Save' },
  x = { ':bw<cr>', 'Close' },
  C = { ':e ~/.config/nvim/init.lua<cr>', 'Edit config' },
  l = {
    name = 'LSP',
    i = {':LspInfo<cr>', 'Connected Language Servers'},
    k = {'<cmd>lua vim.lsp.buf.signature_help()<CR>', 'Signature help'},
    K = {'<cmd>lua vim.lsp.buf.hover()<CR>', 'Hover'},
    t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', 'Type definition'},
    d = {'<cmd>lua vim.lsp.buf.definition()<CR>', 'Go to definition'},
    D = {'<cmd>lua vim.lsp.buf.delaration()<CR>', 'Go to declaration'},
    r = {'<cmd>lua vim.lsp.buf.references()<CR>', 'References'},
    R = {'<cmd>lua vim.lsp.buf.rename()<CR>', 'Rename'},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', 'Code actions'},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', 'Show line diagnostics'},
    n = {'<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', 'Go to next diagnostic'},
    p = {'<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', 'Go to previous diagnostic'},
    f = {'<cmd>lua vim.lsp.buf.formatting()<CR>', 'Format'},
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
    d = {
      ":DiffviewOpen<cr>",
      "Git Diff",
    },
  },
  h = {
    name = 'Harpoon',
    h = {':lua require("harpoon.ui").toggle_quick_menu()<cr>', 'Menu'},
    a = {':lua require("harpoon.mark").add_file()<cr>', 'Add file'},
    q = {'lua require("harpoon.ui").nav_file(1)<cr>'},
    w = {'lua require("harpoon.ui").nav_file(2)<cr>'},
    e = {'lua require("harpoon.ui").nav_file(3)<cr>'},
    r = {'lua require("harpoon.ui").nav_file(4)<cr>'},
  },
}

local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
