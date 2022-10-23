local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        IndentGuidesOdd  {bg = colours.dark_gray},
        IndentGuidesEven {bg = colours.darker_gray},
    }
end)

return p
