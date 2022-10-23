local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        Done    {fg = colours.green},
        Partial {fg = colours.yellow},
    }
end)

return p
