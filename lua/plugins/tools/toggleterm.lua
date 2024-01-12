return {
	{
		"akinsho/toggleterm.nvim",
		event = "VeryLazy",
		opts = {
			persist_mode = false,
			start_in_insert = true,
			autochdir = false,
		},
		keys = {
			{
				"<leader>gl",
				function()
					require("toggleterm.terminal").Terminal
						:new({
							cmd = "lazygit",
							hidden = true,
							direction = "float",
						})
						:toggle()
				end,
				desc = "LazyGit",
			},
		},
	},
}
