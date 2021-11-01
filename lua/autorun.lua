vim.cmd[[au TextYankPost * silent! lua vim.highlight.on_yank({higroup = 'Search', timeout = 200})]]

