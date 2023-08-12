return {
	{
		"voldikss/vim-translator",
		config = function()
			vim.g.tanslator_default_engines = { "bing", "google", "youdao", "sogou" }
			vim.g.tanslator_target_lang = { "zh", "en" }
		end,
	},
}
