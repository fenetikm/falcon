local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        dockercomposeKeywords {fg = colours.blue_gray},
    }
end)

return p
