return {
	{
		"numToStr/FTerm.nvim",
    keys={
      {

      "<leader>t",
      mode="n",
      "<cmd>FTermToggle<CR>",
      desc="[T]oggle FTerm"

      },
      {
        "<leader>t",
        mode="t",
        "<C-\\><C-n><cmd>FTermToggle<CR>",
        desc="close FTerm"
      }
    },

		config = function()
			require("FTerm").setup({
				border = "double",
				dimensions = {
					height = 0.9,
					width = 0.9,
				},
			})
			vim.api.nvim_create_user_command("FTermOpen", require("FTerm").open, { bang = true })
			vim.api.nvim_create_user_command("FTermClose", require("FTerm").close, { bang = true })
			vim.api.nvim_create_user_command("FTermExit", require("FTerm").exit, { bang = true })
			vim.api.nvim_create_user_command("FTermToggle", require("FTerm").toggle, { bang = true })
		end,
	},
}
