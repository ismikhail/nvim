local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local servers = {
  'html',
  'cssls',
  'emmet_ls',
  'sumneko_lua'
}

local system_name = "macOS"
-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path = vim.fn.stdpath('data')..'/lspinstall/sumneko_lua/extension/server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local lspconfig = require("lspconfig")
require("null-ls").config {}
lspconfig["null-ls"].setup {}

lspconfig.tsserver.setup {
  on_attach = function(client, bufnr)
    local ts_utils = require("nvim-lsp-ts-utils")
    client.resolved_capabilities.document_formatting = false

    -- defaults
    ts_utils.setup {
      enable_import_on_completion = true,
      -- eslint
      eslint_enable_diagnostics = true,
      -- formatting
      enable_formatting = true,
      formatter = "prettier",
    }
    -- required to fix code action ranges and filter diagnostics
    ts_utils.setup_client(client)

    -- no default maps, so you may want to define some here
    -- local opts = { silent = true }
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)
  end
}

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

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)

