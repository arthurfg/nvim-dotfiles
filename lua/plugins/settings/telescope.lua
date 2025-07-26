local telescope = require("telescope")
local actions = require("telescope.actions")

-- Ainda falta configurar o scroll do preview..

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
    layout_config = {
      height = 0.6,
      prompt_position = "bottom",
    },
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    prompt_prefix = "🔍 ",
    selection_caret = " ",
    winblend = 10,
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
})

telescope.load_extension("fzf")
