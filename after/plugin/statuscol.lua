-- Hides the default ufo status column with the option 
-- to display a more standard fold column

local builtin = require("statuscol.builtin")

require("statuscol").setup({
   relculright = true,
   segments = {
     {text = {builtin.lnumfunc, " "}, click = "v:lua.ScLa"},
--     {text = {builtin.foldfunc, " "}, click = "v:lua.ScFa"},
   }
 })
