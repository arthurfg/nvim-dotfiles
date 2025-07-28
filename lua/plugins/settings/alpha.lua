local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Load the colorized art which returns {header = header}
local art = require("art.sylph")

-- Use the colorized header from the art file
dashboard.section.header = art.header

-- Menu items
dashboard.section.buttons.val = {
  dashboard.button("f", "󰈞  Find file", "<cmd>Telescope find_files<CR>"),
  dashboard.button("r", "󰁯  Recent session", "<cmd>SessionRestore<CR>"),
  dashboard.button("c", "  Configuration", "<cmd>e ~/.config/nvim/<CR>"),
  dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
}

-- Footer with a quote (you can change this to Mushoku Tensei quotes)
local function footer()
  local total_plugins = require("lazy").stats().count
  local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

  return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
end

dashboard.section.footer.val = footer()

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
