return {
  'gbprod/stay-in-place.nvim',
  config = function()
    local sip = require 'stay-in-place'
    sip.setup {}

    vim.keymap.set('n', '<Tab>', sip.shift_right_line, { noremap = true })
    vim.keymap.set('n', '<S-Tab>', sip.shift_left_line, { noremap = true })
    vim.keymap.set('v', '<Tab>', sip.shift_right_visual, { noremap = true })
    vim.keymap.set('v', '<S-Tab>', sip.shift_left_visual, { noremap = true })
  end,
}
