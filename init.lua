vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

-- Carrega configurações separadas em arquivos Lua
require("core.options") -- opções básicas
require("core.keymaps") -- atalhos
