vim.cmd [[packadd packer.nvim]]
vim.cmd.colorscheme "catppuccin"

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Essentials
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    }

    -- Appearance
	use { "catppuccin/nvim", as = "catppuccin" }
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
    use { "luukvbaal/statuscol.nvim" }
    use {
      "kevinhwang91/nvim-ufo",
      requires = {
        "kevinhwang91/promise-async",
      }
    }

    -- LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'stevearc/conform.nvim'

    -- Misc.
    use "christoomey/vim-tmux-navigator"
    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

end)
