return {
  'marko-cerovac/material.nvim',
  init = function()
    require('material').setup {
      plugins = {
        'gitsigns',
        'harpoon',
        'indent-blankline',
        'mini',
        'nvim-cmp',
        'telescope',
      },
      disable = {
        background = true,
        term_colors = true,
      },
    }
  end,
}
