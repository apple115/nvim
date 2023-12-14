return {
	{
		"folke/todo-comments.nvim",
		cmd = { "TodoTrouble", "TodoTelescope" },
		event = "VeryLazy",
		config = true,
  -- stylua: ignore
  --
	-- TODO:add todo-comments.nvim
  -- HACK :add todo-comments.nvim
  -- PERF :add todo-comments.nvim
  -- NOTE :add todo-comments.nvim
  -- FIX :add todo-comments.nvim
  -- WARN :add todo-comments.nvim
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
    { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
  },
	},
}
