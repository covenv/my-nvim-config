require("config.lazy")
vim.cmd.colorscheme "ayu"
vim.api.nvim_set_keymap('n', 'dd', '\"_dd', { noremap = true, silent = true })
vim.opt.wrap = false
vim.opt.number = true
vim.g.loaded_matchparen = true
vim.opt.tabstop = 4         -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 4     -- Number of spaces a tab counts for when editing
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = function() return vim.fn.getreg('+') end,
    ['*'] = function() return vim.fn.getreg('*') end,
  },
}
