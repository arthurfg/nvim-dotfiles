local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
[[                                                                       ]],
[[                                                                     ]],
[[       ████ ██████           █████      ██                     ]],
[[      ███████████             █████                             ]],
[[      █████████ ███████████████████ ███   ███████████   ]],
[[     █████████  ███    █████████████ █████ ██████████████   ]],
[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
[[                                                                       ]],
}

-- Menu items
dashboard.section.buttons.val = {
  dashboard.button("f", "󰈞  Find file", "<cmd>Telescope find_files<CR>"),
  dashboard.button("n", "󰈔  New file", "<cmd>ene<CR>"),
  dashboard.button("r", "󰁯  Restore session", "<cmd>SessionRestore<CR>"),
  dashboard.button("p", "󰏖  Plugins", "<cmd>Lazy<CR>"),
  dashboard.button("c", "⚡ Configuration", "<cmd>e ~/.config/nvim/<CR>"),
  dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
}

-- Footer with plugin count and time
local function footer()
  local total_plugins = require("lazy").stats().count
  local time = os.date("%H:%M")
  return string.format("󰏖 %d plugins  󰃭 %s", total_plugins, time)
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "String"

-- Layout
dashboard.config.layout = {
  { type = "padding", val = 2 },
  dashboard.section.header,
  { type = "padding", val = 2 },
  dashboard.section.buttons,
  { type = "padding", val = 1 },
  dashboard.section.footer,
}

-- Disable folding on alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

alpha.setup(dashboard.config)
