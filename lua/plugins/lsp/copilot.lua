return {
	{
    
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
    lazy= true,
		config = function()
			require("copilot").setup({
				copilot_node_command = "/home/apple115/.nvm/versions/node/v16.20.1/bin/node", -- Node.js version must be > 16.x
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
		end,
	},
}
