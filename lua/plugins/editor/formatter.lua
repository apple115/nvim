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
				},
			})

			vim.api.nvim_exec(
				[[
      augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost * FormatWrite
      augroup END
      ]],
				true
			)
		end,
	},
}
