local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        healthSuccess {fg = colours.bg, bg = colours.green},
        healthError   {fg = colours.bg, bg = colours.red},
    }
end)

return p
