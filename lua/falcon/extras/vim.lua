local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        Terminal {fg = colours.normal_gray, bg = colours.bg},
    }
end)

return p
