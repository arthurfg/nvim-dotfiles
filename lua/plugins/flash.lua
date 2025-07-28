return {
  "folke/flash.nvim",
  event = "VeryLazy",
  config = function()
    require("plugins.settings.flash")
  end,
}