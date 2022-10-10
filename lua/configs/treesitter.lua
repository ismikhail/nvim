require'nvim-treesitter.configs'.setup {
  ensure_installed = {'lua', 'html', 'ruby', 'javascript', 'typescript', 'css' },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = false,
    max_file_lines = nil,
  },
  context_commentstring = {
    enable = true
  }
}
