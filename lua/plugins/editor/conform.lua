return {
	{
		"stevearc/conform.nvim",
		lazy = true,
		cmd = "ConformInfo",
		keys = {
			{
				"<leader>cF",
				function()
					require("conform").format({ formatters = { "injected" } })
				end,
				mode = { "n", "v" },
				desc = "Format Injected Langs",
			},
		},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					python = { "isort", "black" },
					-- Use a sub-list to run only the first available formatter
					javascript = { { "prettierd", "prettier" } },
					rust = { "rustfmt" },
					c = { "clang_format" },
					cpp = { "clang_format" },
					markdown = { "markdownlint", "markdown-toc" },
					haskell = { "fourmolu" },
          java={"google-java-format"}
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},
}
