return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  init = function()
    require('ibl').setup {
      debounce = 100,
      indent = {
        -- char = '│',
        char = '▏',
      },
      scope = {
        -- enabled = false,
        show_start = false,
        show_end = false,
      },
    }

    local hooks = require 'ibl.hooks'
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
  end,
}
