return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    init = function()
      -- Isso evita conflito com o terminal de GUI (tipo Alacritty)
      vim.g.tmux_navigator_no_mappings = 1

      -- Keybindings manuais (Ctrl + h/j/k/l)
      vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { silent = true })
      vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { silent = true })
      vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { silent = true })
      vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { silent = true })
    end,
  },
}

