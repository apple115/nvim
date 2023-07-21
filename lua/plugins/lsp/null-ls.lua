return{
  {
    "jose-elias-alvarez/null-ls.nvim",
    config=function ()
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      require("null-ls").setup({
        sources={
        require("null-ls").builtins.diagnostics.eslint,
        require("null-ls").builtins.diagnostics.mypy,
        require("null-ls").builtins.diagnostics.flake8,

        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.completion.spell,
        },
      })
    end
  },
  {
      "jay-babu/mason-null-ls.nvim",
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        "williamboman/mason.nvim",
        "jose-elias-alvarez/null-ls.nvim",
      },
      config = function()
        require("mason-null-ls").setup({
            ensure_installed = { "mypy",}
        })
      end,
  },

}
