return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		keys = {
			{
				"<leader>xx",
				mode = "n",
				"<cmd>TroubleToggle<cr>",
				desc = "fi[x] trouble",
			},
			{
				"<leader>xw",
				mode = "n",
				"<cmd>TroubleToggle workspace_diagnostics<cr>",
				desc = "fi[x] trouble [w]orkspace",
			},

			{
				"<leader>xd",
				mode = "n",
				"<cmd>TroubleToggle document_diagnostics<cr>",
				desc = "fi[x] trouble [d]ocument",
			},
			{
				"<leader>xl",
				mode = "n",
				"<cmd>TroubleToggle loclist<cr>",
				desc = "fi[x] trouble [l]oclist",
			},
			{
				"<leader>xq",
				mode = "n",
				"<cmd>TroubleToggle quickfix<cr>",
				desc = "fi[x] trouble [q]uickfix",
			},
			{
				"gR",
				mode = "n",
				"<cmd>TroubleToggle lsp_references<cr>",
				desc = "[g]o fix trouble lsp_[r]eferences",
			},
		},
	},
}
