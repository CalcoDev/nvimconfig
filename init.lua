-- Calcopod's Very Custom Config lmao

--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = false

-- autoload stuff, ensure enter works as expected in quickfix list
vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = 'quickfix',
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<CR>', '<CR>', { noremap = true, silent = true })
  end,
})

-- NOTE(calco): Courtesy of the primagen
function ColorMyPencils()
  vim.cmd.hi 'Comment gui=none'
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

require 'options'
require 'keymaps'

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

require 'lazy-bootstrap'
require 'lazy-plugins'

vim.cmd.colorscheme 'catppuccin-macchiato'
-- ColorMyPencils()

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
