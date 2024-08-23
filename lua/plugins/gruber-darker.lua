return {
  'behemothbucket/gruber-darker-theme.nvim',
  priority = 1000,
  config = function()
    require('gruber-darker').setup()
  end,
}
