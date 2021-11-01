local wk = require'which-key'

local mappings = {
  q = { ':q<cr>', 'Quit' },
  Q = { ':wq<cr>', 'Save & Quit' },
  w = { ':w<cr>', 'Save' },
  x = { ':bdelete<cr>', 'Close' },
  C = { ':e ~/.config/nvim/init.lua', 'Edit config' },
}

local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
