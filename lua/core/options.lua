vim.opt.number = true            -- mostra número absoluto
vim.opt.relativenumber = true    -- números relativos (bom pra navegar com j/k)

vim.opt.tabstop = 2              -- número de espaços que o <Tab> "parece"
vim.opt.shiftwidth = 2           -- número de espaços ao indentar com >>
vim.opt.expandtab = true         -- converte <Tab> em espaços
vim.opt.smartindent = true       -- indentação automática inteligente

vim.opt.wrap = false             -- não quebra linha
vim.opt.scrolloff = 10           -- mantém 10 linhas de margem ao rolar
vim.opt.signcolumn = "yes"       -- sempre mostra a coluna de sinais (diagnostics, git, etc)

vim.opt.termguicolors = true     -- habilita cores no terminal
vim.opt.cursorline = true        -- destaca a linha atual

vim.opt.clipboard = "unnamedplus" -- usa o clipboard do sistema
vim.opt.mouse = "a"              -- ativa uso do mouse

vim.opt.splitright = true        -- splits verticais à direita
vim.opt.splitbelow = true        -- splits horizontais abaixo

vim.opt.ignorecase = true        -- ignora maiúsculas ao buscar...
vim.opt.smartcase = true         -- ...a não ser que você use letras maiúsculas
vim.opt.incsearch = true         -- busca incremental
vim.opt.hlsearch = true          -- destaca resultados

vim.opt.updatetime = 300         -- update para plugins como LSP, gitgutter etc
vim.opt.timeoutlen = 500         -- tempo máximo pra esperar combinações de teclas

vim.opt.clipboard = "" -- desativa o uso automático do clipboard

-- salva undo em arquivo (permite desfazer mesmo depois de fechar)
vim.opt.undofile = true

-- salve o yank no clipboard do sistema usando <leader>y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank para o clipboard" })
