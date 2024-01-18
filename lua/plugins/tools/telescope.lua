return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				enabled = vim.fn.executable("make") == 1,
				build = "make",
				config = function()
					require("telescope").load_extension("fzf")
				end,
			},
		},
		cmd = "Telescope",

		keys = {
			{
				"<leader>,",
				"<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
				desc = "Switch Buffer",
			},
			{
				"<leader>/",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Grep (root dir)",
			},
			{ "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
			{
				"<leader><space>",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "Find Files (root dir)",
			},
			--find--
			{ "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
			{
				"<leader>ff",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = "Find Files (root dir)",
			},
			{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
			{
				"<Leader>fw",
				function()
					require("telescope.builtin").grep_string({ word_match = "-w" })
				end,
				desc = "Find Word",
			},
			-- search--
			{ "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
			{ "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
			{ "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
			{ "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
			{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
			{ "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
      --lsp--
			{
				"gd",
				function()
					require("telescope.builtin").lsp_definitions({ reuse_win = true })
				end,
				desc = "Goto Definition",
			},
			{ "gr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
			{
				"gI",
				function()
					require("telescope.builtin").lsp_implementations({ reuse_win = true })
				end,
				desc = "Goto Implementation",
			},
			{
				"gy",
				function()
					require("telescope.builtin").lsp_type_definitions({ reuse_win = true })
				end,
				desc = "Goto T[y]pe Definition",
			},
		},

		config = function()
			require("telescope").setup({
				defaults = {
					-- Default configuration for telescope goes here:
					-- config_key = value,
					layout_config = {
						horizontal = { prompt_position = "top", preview_width = 0.55 },
						vertical = { mirror = false },
						width = 0.87,
						height = 0.80,
						preview_cutoff = 120,
					},
					mappings = {
						i = {
							["<C-n>"] = require("telescope.actions").cycle_history_next,
							["<C-p>"] = require("telescope.actions").cycle_history_prev,
							["<C-j>"] = require("telescope.actions").move_selection_next,
							["<C-k>"] = require("telescope.actions").move_selection_previous,
						},
						n = { q = require("telescope.actions").close },
					},
				},
				pickers = {
					-- Default configuration for builtin pickers goes here:
					-- picker_name = {
					--   picker_config_key = value,
					--   ...
					-- }
					-- Now the picker_config_key will be applied every time you call this
					-- builtin picker
				},
				extensions = {
					-- Your extension configuration goes here:
					-- extension_name = {
					--   extension_config_key = value,
					-- }
					-- please take a look at the readme of the extension you want to configure
					-- fzf = {}
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			})
		end,
	},
  {

  },
}
