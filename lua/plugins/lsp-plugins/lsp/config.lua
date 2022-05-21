local servers = { "pylance", "sumneko_lua", "tsserver" }
local ensure_installed = vim.tbl_filter(function(d) return d ~= "pylance" end, servers)

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.setup {
  ensure_installed = ensure_installed
}

-- https://stackoverflow.com/questions/9145432/load-lua-files-by-relative-path
-- "plugins.lsp-plugins.lsp"
local folderOfThisFile = (...):match("(.-)[^%.]+$") -- returns 'lib.foo.'

local lspconfig = require("lspconfig")

for _, server in pairs(servers) do
  local handlers = require(folderOfThisFile .. "handlers")
  local opts = {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
  }
  local has_custom_opts, server_custom_opts = pcall(require, folderOfThisFile .. "settings." .. server)
  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
  end
  lspconfig[server].setup(opts)
end
