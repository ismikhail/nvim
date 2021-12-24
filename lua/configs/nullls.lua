local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.diagnostics.eslint,
  null_ls.builtins.code_actions.eslint,
  -- null_ls.builtins.completion.spell
}

null_ls.setup {
  sources = sources
}

