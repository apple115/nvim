return{
  {'kyazdani42/nvim-tree.lua',
    config= function()
    require'nvim-tree'.setup {
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true
      },
        -- 不显示 git 状态图标
        git = {
            enable = false
        },
    }
    end,
  },
}


