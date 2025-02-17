local builtin = require("statuscol.builtin")

require("statuscol").setup({
   relculright = true,
   segments = {
     {text = {builtin.lnumfunc, " "}, click = "v:lua.ScLa"},
     {text = {builtin.foldfunc, " "}, click = "v:lua.ScFa"},
   }
 })
