<div align = "center">
<h1>
My nvim config
</h1>
</div>

## Goals
- Be minimal yet complete
- Measurably improve productivity over VS Code
- Support native macOS navigation

## How does it achieve that?
- Project, buffer, and content-level fuzzy finding with Telescope
- Fast window management and integration with tmux
- Integration with terminal emulator remapping
- Simple LSP and formatter configuration with lspconfig and conform
- Intuitive and fast mappings for the above

## Dependencies
- gopls, clangd, ts_ls, pyright, jdtls (LSP)
- black, prettier, google-java-format (formatting)
- For native macOS shortcuts, the terminal emulator should remap the following:
  - `Cmd-s` -> `F6`
  - `Opt-Delete` -> `F7`
  - `Cmd-Delete` -> `F8`
- Pane navigation is designed to work with [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) with `Opt` replacing `Ctrl`

## Plugins
Essentials:
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

LSP:
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
  
Cosmetics:
- [catppuccin](https://github.com/catppuccin/nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

QoL additions:
- [conform.nvim](https://github.com/stevearc/conform.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
