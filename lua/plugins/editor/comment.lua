return {
	{
		"numToStr/Comment.nvim",
		opts = {
			padding = true,
			---Whether the cursor should stay at its position
			sticky = true,
			---Lines to be ignored while (un)comment
			ignore = nil,

			pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
		},
	},
}
