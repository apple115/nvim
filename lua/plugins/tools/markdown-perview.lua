return {
	{
		"iamcco/markdown-preview.nvim",
    lazy = true,
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
    
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_open_to_the_world = 1
			vim.g.mkdp_browser = "chromium"
		end,
		keys = {
			{
				"<leader>mp",
				ft = "markdown",
				"<cmd>MarkdownPreviewToggle<cr>",
				desc = "[m]arkdown [p]review",
			},
		},
		config = function()
			vim.cmd([[do FileType]])
		end,
	},
}
