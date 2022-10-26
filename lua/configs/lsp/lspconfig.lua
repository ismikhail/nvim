local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_nvim_lsp_status then
  return
end

local typescript_status, typescript = pcall(require, 'typescript')
if not typescript_status then
  return
end

local servers = {
  'html',
  'cssls',
  'solargraph'
}

local on_attach = function(client, bufnr)
end

local capabilities = cmp_nvim_lsp.default_capabilities()

typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach
  }
})

lspconfig['sumneko_lua'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath('config') .. '/lua'] = true,
        }
      }
    }
  }
})

for _, server in pairs(servers) do
  lspconfig[server].setup({
    capabilities = capabilities,
    on_attach = on_attach
  })
end

--- old config ---
-- require'cmp'.setup {
--   sources = {
--     { name = 'nvim_lsp' }
--   }
-- }

-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- local lspconfig = require('lspconfig')

-- lspconfig.tsserver.setup {
--   capabilities = capabilities,
--   on_attach = function(client, bufnr)
--     local ts_utils = require('nvim-lsp-ts-utils')
--     client.resolved_capabilities.document_formatting = false

--     ts_utils.setup {
--       enable_import_on_completion = true,
--       eslint_enable_diagnostics = true,
--       enable_formatting = true,
--       formatter = 'prettier',
--     }
--     -- required to fix code action ranges and filter diagnostics
--     ts_utils.setup_client(client)
--   end
-- }
-- local system_name = 'macOS'
-- local sumneko_root_path = vim.fn.stdpath('data')..'/lspinstall/sumneko_lua/extension/server'
-- local sumneko_binary = sumneko_root_path..'/bin/'..system_name..'/lua-language-server'

-- local runtime_path = vim.split(package.path, ';')
-- table.insert(runtime_path, 'lua/?.lua')
-- table.insert(runtime_path, 'lua/?/init.lua')

-- for _, server in pairs(servers) do
--   local config = { capabilities = capabilities }
--   if (server == 'sumneko_lua') then
--     config = {
--       capabilities = capabilities,
--       cmd = {sumneko_binary, '-E', sumneko_root_path .. '/main.lua'};
--       settings = {
--         Lua = {
--           runtime = {
--             -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--             version = 'LuaJIT',
--             -- Setup your lua path
--             path = runtime_path,
--           },
--           diagnostics = {
--             -- Get the language server to recognize the `vim` global
--             globals = {'vim'},
--           },
--           workspace = {
--             -- Make the server aware of Neovim runtime files
--             library = vim.api.nvim_get_runtime_file('', true),
--           },
--           -- Do not send telemetry data containing a randomized but unique identifier
--           telemetry = {
--             enable = false,
--           },
--         },
--       },
--     }
--   end
--   lspconfig[server].setup(config)
-- end

