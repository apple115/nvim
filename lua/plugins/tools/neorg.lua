return{
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.export"]={},
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
                list_todo = "~/notes/todo",
              },
              default_workspace = "notes",
              index = "index.norg",
              to_do = "todo/index.norg",
            },
          },
          ["core.completion"]={
            config={
              engine = "nvim-cmp",
            },
          },
          ["core.keybinds"]={
            config={
              default_keybinds = true,
              neorg_leader = "<Leader><Leader>",
            }
          },
          ["core.journal"]={
            config={
              workspaces = "notes",
              strategy="flat",
            }
          },
          ["core.export.markdown"] = {
              config = {
                  extensions = "all",
              }
          },
        },
      }
    end,
  },
}
