return {
	{
		"mhartington/formatter.nvim",

		config = function()
			local util = require("formatter.util")
			require("formatter").setup({
				logging = true,
				log_level = vim.log.levels.DEBUG,
				filetype = {
					lua = {
						require("formatter.filetypes.lua").stylua,
					},
					c = {
						require("formatter.filetypes.c").clangformat,
					},
					cpp = {
						require("formatter.filetypes.cpp").clangformat,
					},
					python = {
						require("formatter.filetypes.python").black,
					},
					html = {
						require("formatter.filetypes.html").prettier,
					},
					css = {
						require("formatter.filetypes.css").prettier,
					},
					javascript = {
						require("formatter.filetypes.javascript").prettier,
					},
					haskell = {
						require("formatter.filetypes.haskell").stylish_haskell,
					},
					rust = {
						require("formatter.filetypes.rust").rustfmt,
					},
				},
			})
		end,
	},
}
