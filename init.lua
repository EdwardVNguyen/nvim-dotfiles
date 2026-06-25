require("config.lazy")

-- adds numbers to each line
vim.o.number = true

-- relative numbers
vim.wo.relativenumber = true

-- identation options
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- allow pasting from clipboard
vim.opt.clipboard = "unnamedplus"

-- make light numbers white so I can see them better
vim.api.nvim_set_hl(0, 'LineNr', {fg = '#C4D9FF'} )

-- treat cppm, ixx, and mpp files like cpp files so that parser can read it
vim.filetype.add({
  extension = {
    cppm = 'cpp',
    ixx = 'cpp',
    mpp = 'cpp',
  }
})

vim.diagnostic.config({
  virtual_text = true,
})
