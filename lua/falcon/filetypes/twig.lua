local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        twigVarDelim {base.Delimiter},
        twigTagDelim {base.Delimiter},
        htmlEndTag   {fg = colours.yellow},
        twigString   {fg = colours.light_gray},
        twigOperator {fg = colours.orange},
        twigTagBlock {fg = colours.yellow},
        htmlLink     {fg = colours.blue_gray},
        twigVariable {base.Identifier},
        twigFilter   {fg = colours.tan},
    }
end)

return p
