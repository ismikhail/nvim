local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local servers = {
  'html',
  'cssls',
  'emmet_ls',
  'sumneko_lua',
  'solargraph'
}

local lspconfig = require("lspconfig")
require("null-ls").config {}
lspconfig["null-ls"].setup {}

lspconfig.tsserver.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    local ts_utils = require("nvim-lsp-ts-utils")
    client.resolved_capabilities.document_formatting = false

    ts_utils.setup {
      enable_import_on_completion = true,
      eslint_enable_diagnostics = true,
      enable_formatting = true,
      formatter = "prettier",
    }
    -- required to fix code action ranges and filter diagnostics
    ts_utils.setup_client(client)
  end
}

local system_name = "macOS"
local sumneko_root_path = vim.fn.stdpath('data')..'/lspinstall/sumneko_lua/extension/server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

for _, server in pairs(servers) do
  local config = { capabilities = capabilities }
  if (server == 'sumneko_lua') then
    config = {
      capabilities = capabilities,
      cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = runtime_path,
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    }
  end
  lspconfig[server].setup(config)
end

