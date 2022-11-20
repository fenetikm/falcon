local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        VistaTag    {fg = colours.normal_gray},
        VistaPrefix {fg = colours.mid_dark_gray},
    }
end)

return p
