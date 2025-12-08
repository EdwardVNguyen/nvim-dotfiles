return
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = { "c", "cpp", "css", 
                             "lua", "vim", "vimdoc", 
                             "query", "elixir", "heex", 
                             "javascript", "html", "python",
                             "typescript" },
        highlight = { enable = true },
        indent = { enable = false },
        autotag = { enable = true },
      })
  end
}

