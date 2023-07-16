return{
 { "RutaTang/quicknote.nvim", 
      config=function()
        -- you must call setup to let quicknote.nvim works correctly
        require("quicknote").setup({
            mode = "portable", -- "portable" | "resident", default to "portable"
            sign = "N" -- This is used for the signs on the left side (refer to ShowNoteSigns() api).
      })
  end,
    dependencies = { "nvim-lua/plenary.nvim"}
  },
}

