return{
  {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config=function()
    require("copilot").setup({
      copilot_node_command ="/home/apple115/.nvm/versions/node/v16.3.0/bin/node", -- Node.js version must be > 16.x
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  end,
  },
}
