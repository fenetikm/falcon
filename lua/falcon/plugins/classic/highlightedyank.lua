local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        HighlightedyankRegion {fg = colours.white}
    }
end)

return p
