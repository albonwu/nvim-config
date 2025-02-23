<div align = "center">
<h1>
My nvim config
</h1>
</div>

## Goals
- Be visually minimal yet complete
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
- [packer.nvim](https://github.com/wbthomason/packer.nvim) - Plugin manager.
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder over lists.
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) - File explorer.

Appearance:
- [catppuccin](https://github.com/catppuccin/nvim) - Theme.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Better syntax highlighting and parsing.
- [statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim) - Status column configuration.
- [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo) - Faster and improved folding experience.
  - Requires: [promise-async](https://github.com/kevinhwang91/promise-async)

LSP:
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Quick LSP setup.
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Autocompletion framework.
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP source for `nvim-cmp`.
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine.
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - Completion source for LuaSnip.
- [conform.nvim](https://github.com/stevearc/conform.nvim) - Lightweight formatter plugin.

Miscellaneous:
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Seamless navigation between tmux panes and nvim.
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Automatically close pairs like `()` and `""`.
