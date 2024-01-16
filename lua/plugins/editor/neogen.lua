return {
  {
    "danymat/neogen", 
    dependencies = "nvim-treesitter/nvim-treesitter", 
    config = true,
    keys={
      {"<leader>ng",mode="n",function ()
      require("neogen").generate({type='file'})
    end, desc="[N]eogen [g]enerate file"},
      {"<leader>nf",mode="n",function ()
      require("neogen").generate({type='func'})
    end, desc="[N]eogen [f]unc"},
      {"<leader>nc",mode="n",function ()
      require("neogen").generate({type='class'})
    end, desc="[N]eogen [c]lass"},
      {"<leader>nt",mode="n",function ()
      require("neogen").generate({type='class'})
    end, desc="[N]eogen [t]ype"},

  }
  },
}
