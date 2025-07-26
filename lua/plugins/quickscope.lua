return {
  {
    "unblevable/quick-scope",
    event = "VeryLazy",
    config = function()
      vim.g.qs_buftype_blacklist = { 'nofile', 'nowrite', 'quickfix', 'prompt', 'NvimTree' }
      vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T' }
    end,
    init = function()
      vim.cmd [[
        augroup qs_colors
          autocmd!
          autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
          autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
        augroup END
      ]]
    end,
  },
}

