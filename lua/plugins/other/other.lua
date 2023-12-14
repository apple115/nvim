return {
	{ "elkowar/yuck.vim" },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"m4xshen/autoclose.nvim",
		event = "VeryLazy",
		opts = {
			diable_command_mode = true,
			disable_filetype = { "markdown" },
			enable_check_bracket_line = false,
		},
	},
	{ "h-hg/fcitx.nvim" },
	{
		"folke/neodev.nvim",
	},
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"nvim-lua/plenary.nvim",
	},
}
