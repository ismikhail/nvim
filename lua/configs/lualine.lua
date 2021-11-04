vim.api.nvim_exec([[
  au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]], false)

require('lualine').setup{
  options = {
    theme = 'gruvbox'
    -- theme = 'onedark'
  }
}

