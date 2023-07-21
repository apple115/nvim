return {
  {'goolord/alpha-nvim',
    event = "VimEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config=function ()
    local alpha = require "alpha"
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = {
    '          ▀████▀▄▄              ▄█ ',
    '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    '    ▄        █          ▀▀▀▀▄  ▄▀  ',
    '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    '   █   █  █      ▄▄           ▄▀   ',
    }
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.val = {
	dashboard.button("f", "   Find file", ":Telescope find_files<CR>"),
	dashboard.button("p", "   Projects", ":Telescope projects<CR>"),
	dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("q", "   Quit NVIM", ":qa<CR>"),
}
local head_butt_padding = 2
	local occu_height = #dashboard.section.header.val + 2 * #dashboard.section.buttons.val 
	local header_padding = math.max(0, math.ceil((vim.fn.winheight("$") - occu_height) * 0.25))

	dashboard.config.layout = {
		{ type = "padding", val = header_padding },
		dashboard.section.header,
		{ type = "padding", val = head_butt_padding },
		dashboard.section.buttons,
	}

alpha.setup(dashboard.opts)
  vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
  ]])
    end,
    }
}
