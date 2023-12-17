return {
	{ "elkowar/yuck.vim" },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"RRethy/vim-illuminate",
	},
	{
		"windwp/nvim-autopairs",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-autopairs").setup({})
		end,
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
