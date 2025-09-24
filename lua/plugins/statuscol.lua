return {
  "luukvbaal/statuscol.nvim",
  event = "VeryLazy",
  opts = function()
    local builtin = require("statuscol.builtin")
    return {
      relculright = true,
      segments = {
        { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
        -- If you want a classic fold column via statuscol, uncomment:
        { text = { builtin.foldfunc, " " }, click = "v:lua.ScFa" },
      },
    }
  end,
  config = function(_, opts)
    require("statuscol").setup(opts)
  end,
}
