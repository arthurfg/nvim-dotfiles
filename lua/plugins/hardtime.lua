return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    -- Configuration options
    max_time = 1000,
    max_count = 2,
    disable_mouse = true,
    hint = true,
    notification = true,
    allow_different_key = false,
    enabled = false, -- Start disabled by default
  },
  config = function(_, opts)
    local hardtime = require("hardtime")
    hardtime.setup(opts)
    
    -- Global variable to track hardtime status
    vim.g.hardtime_enabled = false
    
    -- Function to toggle hardtime
    _G.toggle_hardtime = function()
      if vim.g.hardtime_enabled then
        hardtime.disable()
        vim.g.hardtime_enabled = false
        vim.notify("Hardtime disabled", vim.log.levels.INFO)
      else
        hardtime.enable()
        vim.g.hardtime_enabled = true
        vim.notify("Hardtime enabled", vim.log.levels.INFO)
      end
    end
  end,
}