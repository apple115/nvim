return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
		config = function()
			require("lualine").setup({
				options = {
					-- ... your lualine config
					theme = "gruvbox",
					-- ... your lualine config
				},
				sections = {
					lualine_c = {
						{ require("NeoComposer.ui").status_recording },
					},
				},
			})
		end,
	},
}
