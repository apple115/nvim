return{
  { "shellRaining/hlchunk.nvim",
  event = { "UIEnter" },
  config=function()
  require('hlchunk').setup({
      indent = {
          chars = { "│", "¦", "┆", "┊", }, -- more code can be found in https://unicodeplus.com/

          style = {
              "#7aa2f7",
              "#7dcfff",
              "#2ac3de",
              "#b4f9f8",
          },
      },
      chunk = {
          style ="#f7768e",
      },
      blank = {
          enable = false,
      }
  })
  end,
  },
}
