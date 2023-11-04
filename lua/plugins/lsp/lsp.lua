return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup({
				github = {
					download_url_template = "https://github.com/%s/releases/download/%s/%s",
				},
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	}, -- :MasonUpdate updates registry contents
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "pyright" },
				require("neodev").setup(),
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function() end,
	},
}
