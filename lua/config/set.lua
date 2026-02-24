vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cursorline = true

vim.opt.undofile = true

vim.opt.cmdheight = 0
vim.opt.numberwidth = 2

vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
-- vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.opt.splitright = true

vim.opt.mousescroll = "ver:1"
--
-- Neovim 0.11+: virtual_text is opt-in
vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		source = "if_many",
	},
	underline = true,
	signs = true,
	severity_sort = true,
	update_in_insert = false,
})
