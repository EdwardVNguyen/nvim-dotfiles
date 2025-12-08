return
{
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()

    local function setup(server_name, cmd)
        vim.lsp.config[server_name] = {
          cmd = cmd,
          root_dir = vim.fs.root(0, { ".git", "package.json", "pyproject.toml", "Makefile" }),
        }
        vim.lsp.start(vim.lsp.config[server_name])
      end

      -- Lua LS
      setup("lua_ls", { "lua-language-server" })

      -- C/C++ (clangd)
      setup("clangd", { "clangd" })

      -- TypeScript / JavaScript
      setup("ts_ls", { "typescript-language-server", "--stdio" })

      -- Python (pyright or basedpyright)
      setup("pyright", { "pyright-langserver", "--stdio" })
    end,
  }
}
