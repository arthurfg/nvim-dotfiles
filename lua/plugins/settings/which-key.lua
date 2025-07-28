local wk = require("which-key")

wk.setup({
  preset = "modern",
  delay = 500,
  filter = function(mapping)
    return true
  end,
  spec = {
    {
      mode = { "n", "v" },
      { "<leader>f", group = "Telescope" },
      { "<leader>h", group = "Git Hunks" },
      { "<leader>t", group = "Toggle" },
      { "<leader>y", desc = "Yank to clipboard" },
      { "]c", desc = "Next git hunk" },
      { "[c", desc = "Previous git hunk" },
      { "<C-p>", desc = "Git Files" },
      { "<C-f>", desc = "Live Grep" },
      { "<C-t>", desc = "Toggle NvimTree" },
    },
  },
})