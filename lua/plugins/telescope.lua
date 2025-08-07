return
{
  'nvim-telescope/telescope.nvim',
   tag = '0.1.8',
   dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
    vim.keymap.set("n", "<space>fd", require('telescope.builtin').find_files)
  end
}
