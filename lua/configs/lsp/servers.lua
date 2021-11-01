require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.html.setup {
  capabilities = capabilities
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities
}

require'lspconfig'.tsserver.setup {
  capabilities = capabilities
}


