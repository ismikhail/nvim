" nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> <space>f <cmd>Telescope find_files<cr>
" nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> <space>s <cmd>Telescope live_grep<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF

