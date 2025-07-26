require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua",
    "ruby",
    "bash",
    "html",
    "css",
    "javascript",
    "json",
    "yaml",
    "markdown",
    "typescript"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
})

