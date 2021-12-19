-- highlight yank text
vim.cmd[[au TextYankPost * silent! lua vim.highlight.on_yank({higroup = 'Search', timeout = 200})]]

-- show line diagnostics on cursor
vim.cmd[[
  autocmd CursorHold <buffer> lua require('configs.lsp.diagnostics').show_line_diagnostics()
]]

-- fix commentary?
vim.cmd[[
  autocmd FileType apache setlocal commentstring=#\ %s
]]

