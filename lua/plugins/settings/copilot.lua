require("copilot").setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = "<Tab>",
      dismiss = "<C-e>",
    },
  },
  panel = { enabled = false },
})