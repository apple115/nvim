return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",

		config = function()
			require("nvim-treesitter.configs").setup({
				-- 安装 language parser
				-- :TSInstallInfo 命令查看支持的语言
				ensure_installed = {
					"c",
					"python",
					"lua",
					"vim",
					"bash",
					"latex",
					"regex",
					"markdown",
					"markdown_inline",
				},
				highlight = {
					enable = true,
				},
				-- 启用增量选择
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<CR>",
						node_incremental = "<CR>",
						node_decremental = "<BS>",
						scope_incremental = "<TAB>",
					},
				},
				-- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
				indent = {
					enable = true,
				},
				context_commentstring = {
					enable = true,
					enable_autocmd = false,
				},
			})
		end,
	},

	-- {
	-- 	"nvim-treesitter/nvim-treesitter-context",
	-- 	config = function()
	-- 		require("treesitter-context").setup({})
	-- 	end,
	-- },
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
}
