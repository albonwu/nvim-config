local minimal_catppuccin = require("lualine.themes.catppuccin")

-- https://catppuccin.com/palette/
local colors = {
	mauve = "#cba6f7",
	text = "#cdd6f4",
	lavender = "#b4befe",
	base = "#1e1e2e",
	surface = "#45475a",
	mantle = "#181825",
	pink = "#f5c2e7",
	flamingo = "#f2cdcd",
	yellow = "#f9e2af",
	maroon = "#eba0ac",
	blue = "#89b4fa",
}

minimal_catppuccin.normal = {
	a = { bg = colors.lavender, fg = colors.mantle },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

minimal_catppuccin.insert = {
	a = { bg = colors.mantle, fg = colors.lavender },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

minimal_catppuccin.visual = {
	a = { bg = colors.mantle, fg = colors.lavender },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

minimal_catppuccin.replace = {
	a = { bg = colors.mantle, fg = colors.lavender },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

minimal_catppuccin.command = {
	a = { bg = colors.mantle, fg = colors.lavender },
	b = { bg = colors.mantle, fg = colors.text },
	z = { bg = colors.mantle, fg = colors.text },
}

local function file_with_icon()
	local fname = vim.fn.expand("%:t")
	if fname == "" then
		return "[No Name]"
	end

	local ext = vim.fn.expand("%:e")
	local ok, devicons = pcall(require, "nvim-web-devicons")
	if not ok then
		return fname
	end

	local icon = devicons.get_icon(fname, ext, { default = true })
	return " " .. ((icon and (icon .. " " .. fname)) or fname) .. " "
end

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
					-- component_separators = { left = "│", right = "│" },
					-- component_separators = { left = "", right = "" },
					-- section_separators = { left = "", right = "" },
					disabled_filetypes = { statusline = {}, winbar = {} },
					ignore_focus = {},
					always_divide_middle = true,
					always_show_tabline = true,
					globalstatus = false,
					refresh = {
						statusline = 500,
						tabline = 1000,
						winbar = 1000,
						refresh_time = 16,
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
					-- lualine_a = { file_with_icon },
					lualine_a = {
						{
							file_with_icon,
							padding = { left = -1 },
							color = { gui = "bold" },
						},
					},
					lualine_b = {
						{
							"branch",
							padding = { left = 2, right = 1 },
							color = { gui = "bold" },
						},
						"diff",
					},
					lualine_c = { "diagnostics" },
					lualine_x = {},
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { file_with_icon },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {
					{
						filetypes = { "NvimTree" },
						sections = {},
						inactive_sections = {},
					},
				},
			})
		end,
	},
}
