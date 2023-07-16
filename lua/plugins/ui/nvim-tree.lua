return{
  {'kyazdani42/nvim-tree.lua',
    config= function()
    require'nvim-tree'.setup {
        -- 不显示 git 状态图标
        git = {
            enable = false
        },
    }
    end,
  },
}


