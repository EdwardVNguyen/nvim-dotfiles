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


