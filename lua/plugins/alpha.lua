return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    require("plugins.settings.alpha")
  end,
}