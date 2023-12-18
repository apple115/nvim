return {
	"nvimdev/lspsaga.nvim",
	event = "BufReadPre",
	keys = {
		{
			"<C-k>",
			mode = "n",
			"<cmd>Lspsaga hover_doc<CR>",
			desc = "Hover Documentation",
		},
		{
			"<leader>rn",
			mode = "n",
			"<cmd>Lspsaga rename ++project<CR>",
			desc = "[R]e[n]ame",
		},
		{
			"<leader>ca",
			mode = "n",
			"<cmd>Lspsaga code_action<CR>",
			desc = "[C]ode [A]ction",
		},
		{
			"<leader>ot",
			mode = "n",
			"<cmd>Lspsage outline<CR>",
			desc = "[O]u[U]tline",
		},
	},

	config = function()
		require("lspsaga").setup({
			outline = {
				keys = {
					quit = "Q",
					toggle_or_jump = "<cr>",
				},
			},
			finder = {
				keys = {
					quit = "Q",
					shuttle = "J",
					toggle_or_open = "<cr>",
				},
			},
			definition = {
				keys = {
					edit = "<C-c>j",
				},
			},
			code_action = {
				keys = {
					quit = "Q",
				},
			},
		})
	end,

	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
