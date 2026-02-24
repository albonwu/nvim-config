return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },

	init = function()
		vim.opt.termguicolors = true
	end,

	config = function()
		require("colorizer").setup({
			"*",

			css = { css = true },
			scss = { css = true },
			sass = { css = true },
			less = { css = true },
		}, {
			mode = "background",
		})
	end,
}
