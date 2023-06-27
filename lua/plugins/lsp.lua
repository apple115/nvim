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

require'lspconfig'.clangd.setup {
}

require 'lspconfig'.pyright.setup{


}

