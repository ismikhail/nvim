require("bufferline").setup{
  options = {
    separator_style = 'slant'
  }
}
vim.cmd[[
  nnoremap <silent><S-l> :BufferLineCycleNext<CR>
  nnoremap <silent><S-h> :BufferLineCyclePrev<CR>
]]

