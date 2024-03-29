return {
	{
		"nvim-treesitter/nvim-treesitter",
    lazy = true;
    event = "BufReadPre",
		build = ":TSUpdate",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},

		opts = {

			-- 安装 language parser
			-- :TSInstallInfo 命令查看支持的语言
			ensure_installed = {
				"c",
        "C++",
        "rust",
				"python",
				"lua",
				"vim",
				"bash",
				"latex",
				"regex",
				"markdown-inline",
				"markdown",
				"java",
        "haskell"
			},
			sync_install = false,
			highlight = {
				enable = true,

				disable = function(lang, buf)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
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
		},
	},

	-- {
	-- 	"nvim-treesitter/nvim-treesitter-context",
	-- 	config = function()
	-- 		require("treesitter-context").setup({})
	-- 	end,
	-- },
}
