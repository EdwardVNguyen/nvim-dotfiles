return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local function setup(server_name, cmd, opts)
        opts = opts or {}
        vim.lsp.config[server_name] = {
          cmd = cmd,
          root_dir = vim.fs.root(0, { ".git", "package.json", "pyproject.toml", "Makefile" }),
          filetypes = opts.filetypes,
        }
        vim.lsp.enable(server_name)
      end
      
      -- Lua LS
      setup("lua_ls", { "lua-language-server" })
      -- C/C++ (clangd)
      setup("clangd", { "clangd" })
      -- TypeScript / JavaScript
      setup("ts_ls", { "typescript-language-server", "--stdio" })
      -- Python (pyright)
      setup("pyright", { "pyright-langserver", "--stdio" })
      -- Emmet LSP
      setup("emmet_language_server", { "emmet-language-server", "--stdio" }, {
        filetypes = { "html", "css", "javascriptreact", "typescriptreact", "vue" }
      })
    end,
  }
}
