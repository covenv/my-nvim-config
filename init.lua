require("config.lazy")
vim.opt.wrap = false
vim.cmd.colorscheme "retrobox"
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
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}

