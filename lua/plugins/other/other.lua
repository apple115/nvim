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
		config = function()
			require("autoclose").setup()
		end,
	},
	{ "h-hg/fcitx.nvim" },
	{
		"folke/neodev.nvim",
	},
}
