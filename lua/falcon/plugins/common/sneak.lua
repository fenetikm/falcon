local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        Sneak      {fg = colours.white, bg = colours.dark_indigo},
        SneakLabel {fg = colours.white, bg = colours.dark_indigo},
        SneakScope {fg = colours.white},
    }
end)

return p
