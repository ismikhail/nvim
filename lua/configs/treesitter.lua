require'nvim-treesitter.configs'.setup {
  ensure_installed = {'lua', 'html', 'ruby', 'javascript', 'typescript' },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
