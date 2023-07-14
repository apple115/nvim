local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



require("lazy").setup({
  {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  },
  {'shaunsingh/nord.nvim'},
  {'kyazdani42/nvim-tree.lua'},
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {"kylechui/nvim-surround", version="*",
  event = "VeryLazy",
  config = function ()
    require("nvim-surround").setup({})
  end
  }, -- Use for stability; omit to use `main` branch for the latest features
  {'nvim-lualine/lualine.nvim',dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true}},
  { "williamboman/mason.nvim", build = ":MasonUpdate",},-- :MasonUpdate updates registry contents
  {"williamboman/mason-lspconfig.nvim",},
  {"neovim/nvim-lspconfig",},
  {"hrsh7th/nvim-cmp",},
  {'nvim-telescope/telescope.nvim', tag = '0.1.1',dependencies = { 'nvim-lua/plenary.nvim' }},
  {"hrsh7th/cmp-nvim-lsp",},
  {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
  },
  { "rafamadriz/friendly-snippets" },
  {'saadparwaiz1/cmp_luasnip' },
  {'hrsh7th/cmp-buffer'},
  {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  },
  {
  "zbirenbaum/copilot-cmp",
  config = function ()
    require("copilot_cmp").setup()
  end
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = { {"nvim-tree/nvim-web-devicons"} }
  },
  {'mfussenegger/nvim-dap'},
--  { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"} },
  {"theHamsta/nvim-dap-virtual-text"},
  {"h-hg/fcitx.nvim"},
   {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },
 {'is0n/fm-nvim'},
 { "RutaTang/quicknote.nvim", config=function()
        -- you must call setup to let quicknote.nvim works correctly
        require("quicknote").setup({})
  end
  , dependencies = { "nvim-lua/plenary.nvim"} },
},
{"ellisonleao/glow.nvim", config = true, cmd = "Glow"},
{
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      "r",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    {
      "R",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash Treesitter Search",
    },
    {
      "<c-s>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
},
{
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
},
  {"elkowar/yuck.vim"},
})

require "plugins.nvim-tree"
require "plugins.nvim-treesitter"
require "plugins.lualine"
require "plugins.telescope"
require "plugins.lsp"
require "plugins.cmp"
require "plugins.lspsaga-lsp"
require "plugins.dap"
require "plugins.copilot"
--require "plugins.dap-ui"
require "plugins.nvim-dap-virtual-text"
require "plugins.colorscheme"
require "plugins.quickNote"
require "plugins.fm-nvim"
require "plugins.glow"
require "plugins.noice"
