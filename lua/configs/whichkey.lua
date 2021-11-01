local wk = require'which-key'

local mappings = {
  q = { ':q<cr>', 'Quit' },
  Q = { ':wq<cr>', 'Save & Quit' },
  w = { ':w<cr>', 'Save' },
  x = { ':bdelete<cr>', 'Close' },
  C = { ':e ~/.config/nvim/init.lua<cr>', 'Edit config' },
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    k = {'<cmd>lua vim.lsp.buf.signature_help()<CR>', "Signature help"},
    K = {'<cmd>lua vim.lsp.buf.hover()<CR>', "Hover"},
    t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    d = {'<cmd>lua vim.lsp.buf.definition()<CR>', "Go to definition"},
    D = {'<cmd>lua vim.lsp.buf.delaration()<CR>', "Go to declaration"},
    r = {'<cmd>lua vim.lsp.buf.references()<CR>', "References"},
    R = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    n = {'<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', "Go to next diagnostic"},
    p = {'<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', "Go to previous diagnostic"}
  },
}

local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
