-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- Set consistent offset encoding
local capabilities = vim.tbl_deep_extend(
  "force", 
  nvlsp.capabilities or {}, 
  { offsetEncoding = { "utf-16" } }
)

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = capabilities,
-- }

lspconfig.clangd.setup {
  on_attach = nvlsp.on_attach,
  capabilities = capabilities,
  cmd = { "clangd", "--clang-tidy", "--clang-tidy-checks=*", "--background-index", "--header-insertion=never" },
  offsetEncoding = "utf-16",
}
