require("catppuccin").setup({
  flavour = "frappe", -- ou mocha, latte, macchiato
  transparent_background = false,
  integrations = {
    nvimtree = true,
    treesitter = true
  },
})
vim.cmd.colorscheme("catppuccin")