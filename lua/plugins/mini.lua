return
{
  {
    'echasnovski/mini.nvim',
    config = function()
      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = true }

      local autopair = require 'mini.pairs'
      autopair.setup { }
    end
  }
}


