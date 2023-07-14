require("mason").setup({
    github = {
       download_url_template = "https://github.com/%s/releases/download/%s/%s"
    },
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls","clangd","pyright"},
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup{
  capabilities = capabilities,
}

local cmp_nvim_lsp = require "cmp_nvim_lsp"
require'lspconfig'.clangd.setup {
  on_attach = on_attach,
    capabilities = cmp_nvim_lsp.default_capabilities(),
    cmd = {
      "clangd",
      "--offset-encoding=utf-16",
    },
}

require 'lspconfig'.pyright.setup{
}

require 'lspconfig'.omnisharp.setup{
  root_dir = require'lspconfig'.util.root_pattern("*.csproj","*.sln");
}

require 'lspconfig'.omnisharp_mone.setup{
}
