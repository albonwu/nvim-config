<div align="center">
<h1>
My nvim config
</h1>
</div>

## Goals

- Minimal visual noise, complete feature set
- Faster workflow than VS Code
- Native-feeling macOS navigation

## Features

- Project, buffer, and symbol search via Telescope
- Seamless tmux and split window navigation
- Terminal shortcut integration for save/delete actions
- LSP setup with Mason + lspconfig
- Formatting with Conform
- Clean, consistent keymaps

## Dependencies

- LSP servers: gopls, clangd, ts_ls, pyright, jdtls
- Formatters: black, prettier, google-java-format
- macOS shortcut remaps in terminal:
  - `Cmd-s` → `F6`
  - `Opt-Delete` → `F7`
  - `Cmd-Delete` → `F8`
- Pane navigation integrates with [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) (uses `Opt` instead of `Ctrl`)

## Plugins

### Core

- [lazy.nvim](https://github.com/folke/lazy.nvim) - plugin manager
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) - file explorer
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder

### Appearance

- [catppuccin](https://github.com/catppuccin/nvim) - theme
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - syntax parsing
- [statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim) - status column
- [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) - folding improvements
  - Requires [promise-async](https://github.com/kevinhwang91/promise-async)

### LSP & Completion

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [mason.nvim](https://github.com/williamboman/mason.nvim) - LSP/formatter installer
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) - bridge between Mason and LSP
- [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) - auto-installs formatters and linters
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - completion engine
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP completion source
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - snippet engine
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - LuaSnip completion source
- [conform.nvim](https://github.com/stevearc/conform.nvim) - lightweight formatter

### Utilities

- [trouble.nvim](https://github.com/folke/trouble.nvim) - diagnostics and quickfix lists
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - pane navigation
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - automatic pair closing
