-- nvim-tree keybindings
vim.keymap.set("n", "<C-t>", require("nvim-tree.api").tree.toggle, {
  noremap = true,
  silent = true,
  desc = "Toggle NvimTree",
})

-- telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: Help tags" })

-- Procurar arquivos só do Git
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Telescope: Git Files" })

-- Grep Geral
vim.keymap.set("n", "<C-f>", builtin.live_grep, { desc = "Telescope: General Grep" })

-- Manter os padrões em <leader>
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Find files (all)" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: Grep (all files)" })
