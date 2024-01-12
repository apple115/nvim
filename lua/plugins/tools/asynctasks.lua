return {
	{
		"skywind3000/asynctasks.vim",
		dependencies = { "skywind3000/asyncrun.vim" },
		event = "VeryLazy",
		config = function()
			vim.cmd([[
let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'tab'
      ]])
		end,
	},
}
