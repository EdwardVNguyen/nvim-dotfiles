return {
  {
    "windwp/nvim-ts-autotag",
    lazy = false,        -- load immediately
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("nvim-ts-autotag").setup({
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = false,
        },
      })
    end
  }
}
