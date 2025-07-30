require("lualine").setup({
  options = {
    theme = "catppuccin",
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
    icons_enabled = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename" },
    lualine_x = { 
      -- Hardtime status indicator
      {
        function()
          return vim.g.hardtime_enabled and "🔒 HARD" or ""
        end,
        color = { fg = "#f38ba8", bg = "#313244" }, -- catppuccin pink on dark
      },
      "encoding", 
      "fileformat", 
      "filetype" 
    },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
