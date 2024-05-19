local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        OilDirIcon {fg = colours.blue_gray},
        OilDir {fg = colours.blue_gray},
        OilNoIcon {fg = colours.blue_dark_gray},
    }
end)

return p
