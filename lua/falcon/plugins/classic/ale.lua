local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        ALEErrorSign   { fg = colours.red},
        ALEWarningSign { fg = colours.orange},
        ALEInfoSign    { fg = colours.normal_gray},
    }
end)

return p
