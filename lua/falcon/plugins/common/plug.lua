local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        plugDeleted {fg = colours.red},
        plugBracket {fg = colours.orange},
        plug1       {fg = colours.tan},
        plug2       {fg = colours.blue_gray},
    }
end)

return p
