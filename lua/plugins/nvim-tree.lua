return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				show_on_open_dirs = false,
				icons = { hint = "", info = "", warning = "", error = "" },
			},
			renderer = {
				highlight_diagnostics = "name",
				icons = {
					diagnostics_placement = "after",
					show = { diagnostics = true },
				},
			},
		})
	end,
}
