return {
	"luukvbaal/statuscol.nvim",
	event = "VeryLazy",
	opts = function()
		local builtin = require("statuscol.builtin")
		return {
			relculright = true,
			segments = {
				-- { text = { builtin.foldfunc, " " }, click = "v:lua.ScFa" },

				{
					sign = { namespace = { "gitsigns" }, maxwidth = 1, colwidth = 1, auto = true },
					click = "v:lua.ScSa",
				},

				{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
			},
		}
	end,
	config = function(_, opts)
		require("statuscol").setup(opts)
	end,
}
