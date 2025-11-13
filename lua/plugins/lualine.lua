local minimal_catppuccin = require("lualine.themes.catppuccin")

-- https://catppuccin.com/palette/
local colors = {
	mauve = "#cba6f7",
	text = "#cdd6f4",
	base = "#1e1e2e",
	surface = "#45475a",
	mantle = "#181825",
}

minimal_catppuccin.normal = {
	a = { bg = colors.surface, fg = colors.text },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

minimal_catppuccin.insert = {
	a = { bg = colors.surface, fg = colors.text },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

minimal_catppuccin.visual = {
	a = { bg = colors.surface, fg = colors.text },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

minimal_catppuccin.replace = {
	a = { bg = colors.surface, fg = colors.text },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

minimal_catppuccin.command = {
	a = { bg = colors.surface, fg = colors.text },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = minimal_catppuccin,
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					always_show_tabline = true,
					globalstatus = false,
					refresh = {
						statusline = 500,
						tabline = 1000,
						winbar = 1000,
						refresh_time = 16, -- ~60fps
						events = {
							"WinEnter",
							"BufEnter",
							"BufWritePost",
							"SessionLoadPost",
							"FileChangedShellPost",
							"VimResized",
							"Filetype",
							"CursorMoved",
							"CursorMovedI",
							"ModeChanged",
						},
					},
				},
				sections = {
					lualine_a = { "filename" },
					lualine_b = { "branch", "diff" },
					lualine_c = { "diagnostics" },
					lualine_x = {},
					-- lualine_b = { "branch", "diff", "diagnostics" },
					-- lualine_c = { "filename" },
					-- lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},
}
