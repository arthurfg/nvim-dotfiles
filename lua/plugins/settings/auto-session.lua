require('auto-session').setup({
  log_level = 'error',
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = false,
  auto_session_suppress_dirs = { "~/", "~/Downloads", "/tmp" },
  auto_session_use_git_branch = true,
  
  -- Session lens configuration
  session_lens = {
    buftypes_to_ignore = {},
    load_on_setup = true,
    theme_conf = { border = true },
    previewer = false,
  },
})

-- Keymaps
vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for cwd" })
vim.keymap.set("n", "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", { desc = "Toggle autosave" })
vim.keymap.set("n", "<leader>wd", "<cmd>SessionDelete<CR>", { desc = "Delete session for cwd" })
vim.keymap.set("n", "<leader>wf", "<cmd>Autosession search<CR>", { desc = "Search sessions" })