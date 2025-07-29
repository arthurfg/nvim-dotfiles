![Preview](https://github.com/gu-maia/nvim-dotfiles/blob/main/assets/dashboard2.png?raw=true)
## 🚀 Quick Setup

```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this configuration
git clone https://github.com/gu-maia/nvim-dotfiles ~/.config/nvim

# Start Neovim (plugins will auto-install)
nvim
```

## 📦 Core Plugins

### Plugin Manager
- **[lazy.nvim](https://github.com/folke/lazy.nvim)**

### UI & Aesthetics
- **[alpha-nvim](https://github.com/goolord/alpha-nvim)** - Customizable startup screen with colorized art
- **[catppuccin](https://github.com/catppuccin/nvim)** - Colorscheme
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Statusline
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)** - File explorer sidebar
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** - Keymap discovery popup

### Navigation & Movement
- **[flash.nvim](https://github.com/folke/flash.nvim)** - Enhanced navigation with 2-character jumps
- **[quick-scope](https://github.com/unblevable/quick-scope)** - Highlight unique characters for f/F/t/T
- **[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)** - Seamless tmux/vim pane switching
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder for files, grep, and more

### Development
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configurations
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP server installer
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Autocompletion engine
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting
- **[copilot.lua](https://github.com/zbirenbaum/copilot.lua)** - AI code suggestions

### Git Integration
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git decorations and hunk management

### Session Management
- **[auto-session](https://github.com/rmagatti/auto-session)** - Automatic session save/restore

## Key Mappings

### Leader Key
- `<Space>` - Main leader key

### Navigation
- `s` + `{chars}` - Flash jump to any visible text
- `S` - Flash jump to code structures (treesitter)
- `f/F/t/T` - Enhanced same-line movement with quickscope highlighting
- `]c` / `[c` - Next/previous git hunk

### File Operations
- `<C-p>` - Find git files (Telescope)
- `<C-f>` - Live grep (Telescope)
- `<C-t>` - Toggle file tree
- `<leader>ff` - Find all files
- `<leader>fg` - Live grep all files
- `<leader>fb` - Browse buffers
- `<leader>fh` - Help tags

### Git Operations
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>tb` - Toggle line blame

### Session Management
- `<leader>wr` - Restore session
- `<leader>ws` - Save session
- `<leader>wf` - Browse sessions

### Clipboard
- `<leader>y` - Yank to system clipboard

## Project Structure

```
~/.config/nvim/
  ├── init.lua                  # Main entry point
  ├── lua/
  │   ├── art/                  # Custom ASCII art files
  │   │   └── sylph.lua         # Current Sylph character art
  │   ├── config/
  │   │   └── lazy.lua          # Plugin manager setup
  │   ├── core/
  │   │   ├── keymaps.lua       # Key mappings
  │   │   └── options.lua       # Neovim options
  │   └── plugins/
  │       ├── *.lua             # Plugin declarations
  │       └── settings/         # Plugin configurations
  │           └── *.lua
  ├── lazy-lock.json            # Plugin version lock
  └── README.md                 # This file
```

## Configuration Notes

### For Future Me: Important Tweaks

1. **Clipboard Configuration:**
   - Set to empty by default (`vim.opt.clipboard = ""`)
   - Use `<leader>y` for system clipboard yanking
   - This prevents auto-clipboard behavior

2. **Session Management:**
   - Auto-saves per directory
   - Git branch aware (different sessions per branch)
   - Ignores home directory and common temp folders

3. **Plugin Loading:**
   - Most plugins are `lazy = false` for immediate availability
   - Some use `event = "VeryLazy"` for better startup time

4. **LSP Setup:**
   - Mason auto-installs language servers
   - Configurations in `plugins/settings/lspconfig.lua`

5. **Which-key Integration:**
   - Groups are organized by prefix (`<leader>f` = files, `<leader>h` = git, etc.)
   - Descriptions make keymaps discoverable

## Acknowledgments

- **[LightningNvim](https://github.com/nxtkofi/LightningNvim)** - For the img2art tool and inspiration
- **[Asthestarsfalll](https://github.com/Asthestarsfalll/img2art)** - Original img2art repository
