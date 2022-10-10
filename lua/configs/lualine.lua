vim.api.nvim_exec([[
  au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]], false)

require('lualine').setup{
  options = {
    component_separators = { left = '', right = '' },
    -- theme = 'gruvbox'
    -- theme = 'ayu'
    theme = 'onedark'
  }
}

