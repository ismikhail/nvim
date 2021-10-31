require("bufferline").setup{
  options = {
    separator_style = 'slant',
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } }
  }
}
vim.cmd[[
  nnoremap <silent><S-l> :BufferLineCycleNext<CR>
  nnoremap <silent><S-h> :BufferLineCyclePrev<CR>
]]

