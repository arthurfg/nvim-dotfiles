return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("plugins.settings.which-key")
  end,
}