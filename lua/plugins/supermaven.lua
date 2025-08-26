
return {
  "supermaven-inc/supermaven-nvim",
  opts = {
    keymaps = {
      accept_suggestion = "<Tab>",
      clear_suggestion = "<C-]>",
    },
  },
  init = function()
    vim.keymap.set("i", "<Tab>", function()
      vim.fn.feedkeys(vim.fn['supermaven#AcceptSuggestion'](), "n")
    end, { noremap = true, silent = true })
  end,
}
