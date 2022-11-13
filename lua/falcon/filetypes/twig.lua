local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        twigVarDelim {classic.Delimiter},
        twigTagDelim {classic.Delimiter},
        htmlEndTag   {fg = colours.yellow},
        twigString   {fg = colours.light_gray},
        twigOperator {fg = colours.orange},
        twigTagBlock {fg = colours.yellow},
        htmlLink     {fg = colours.blue_gray},
        twigVariable {classic.Identifier},
        twigFilter   {fg = colours.tan},
    }
end)

return p
