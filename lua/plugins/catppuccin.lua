-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe", -- ou mocha, latte, macchiato
      transparent_background = false,
      integrations = {
        nvimtree = true,
        treesitter = true
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}

